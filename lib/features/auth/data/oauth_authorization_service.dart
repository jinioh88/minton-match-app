import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';

import '../../../core/env/app_config.dart';
import '../../../core/env/app_environment.dart';
import '../../../core/network/api_exception.dart';
import 'auth_api_service.dart';
import 'dto/oauth_state_dto.dart';
import '../domain/oauth2_provider.dart';

/// OAuth2 인가 엔드포인트로 브라우저(또는 커스텀 탭)를 열고 `code`를 회수합니다.
///
/// 클라이언트 ID는 `--dart-define`으로 주입합니다. 미설정 시 [OAuthConfigException]을 던집니다.
class OAuthAuthorizationService {
  OAuthAuthorizationService({required AuthApiService api, AppConfig? config})
      : _api = api,
        _config = config ?? AppEnvironment.appConfig;

  final AuthApiService _api;
  final AppConfig _config;

  /// Kakao: [AppConfig.kakaoClientId]를 `client_id`로 사용합니다.
  Future<String> obtainAuthorizationCode(OAuth2Provider provider) async {
    if (provider == OAuth2Provider.kakao) {
      return _obtainKakaoAuthorizationCode();
    }
    if (provider == OAuth2Provider.naver) {
      final state = await _fetchNaverOAuthState();
      final uri = _buildNaverAuthorizeUri(state);
      return _authenticateAndReadCode(uri);
    }
    if (provider == OAuth2Provider.google) {
      final state = await _fetchGoogleOAuthState();
      final uri = _buildGoogleAuthorizeUri(state);
      return _authenticateAndReadCode(uri);
    }
    final uri = _buildAuthorizeUri(provider);
    return _authenticateAndReadCode(uri);
  }

  Future<String> _authenticateAndReadCode(Uri uri) async {
    final callback = await FlutterWebAuth2.authenticate(
      url: uri.toString(),
      callbackUrlScheme: _config.oauthCallbackUrlScheme,
    );
    final result = Uri.parse(callback);
    final err = result.queryParameters['error'];
    if (err != null) {
      final desc = result.queryParameters['error_description'] ?? err;
      throw OAuthUserCancelledException(desc);
    }
    final code = result.queryParameters['code'];
    if (code == null || code.isEmpty) {
      throw const OAuthConfigException('인증 코드가 없습니다.');
    }
    return code;
  }

  Future<String> _fetchNaverOAuthState() async {
    return _fetchOAuthStateEnvelope(
      () => _api.fetchNaverOAuthState(OAuth2Provider.naver.apiName),
      '네이버',
    );
  }

  Future<String> _fetchGoogleOAuthState() async {
    return _fetchOAuthStateEnvelope(
      () => _api.fetchGoogleOAuthState(OAuth2Provider.google.apiName),
      '구글',
    );
  }

  /// 성공 시 HTTP 200 + ApiResponse 래퍼, 실패 시 ErrorResponse(HTTP 4xx 등)로 오는 경우를 구분합니다.
  Future<String> _fetchOAuthStateEnvelope(
    Future<OAuthStateResponseEnvelope> Function() fetch,
    String label,
  ) async {
    try {
      final envelope = await fetch();
      return _stateFromEnvelope(envelope, label);
    } on DioException catch (e) {
      final parsed = ApiException.tryParse(
        e.response?.data,
        httpStatusCode: e.response?.statusCode,
      );
      throw OAuthConfigException(
        parsed?.message ??
            e.message ??
            '$label OAuth state 발급에 실패했습니다.',
      );
    }
  }

  String _stateFromEnvelope(
    OAuthStateResponseEnvelope envelope,
    String label,
  ) {
    final state = envelope.data?.state.trim();
    if (envelope.success && state != null && state.isNotEmpty) {
      return state;
    }
    throw OAuthConfigException(
      envelope.message ?? '$label OAuth state 발급에 실패했습니다.',
    );
  }

  Future<String> _obtainKakaoAuthorizationCode() async {
    final redirectUri = _config.kakaoSdkRedirectUri.trim();
    if (redirectUri.isEmpty) {
      throw const OAuthConfigException('OAUTH_REDIRECT_URI가 비어 있습니다.');
    }
    final redirect = Uri.tryParse(redirectUri);
    if (redirect == null ||
        !redirect.hasScheme ||
        redirect.scheme == 'http' ||
        redirect.scheme == 'https') {
      throw const OAuthConfigException(
        '카카오 SDK 방식은 앱 커스텀 스킴 redirect가 필요합니다. '
        '예: kakao{네이티브앱키}://oauth',
      );
    }
    final nativeAppKey = _config.kakaoNativeAppKey.trim();
    if (nativeAppKey.isEmpty) {
      throw const OAuthConfigException(
        'KAKAO_NATIVE_APP_KEY가 비어 있습니다. '
        '--dart-define-from-file=dart_defines.oauth.local.env 등으로 주입하세요.',
      );
    }

    final client = AuthCodeClient.instance;
    try {
      return await client.authorizeWithTalk(redirectUri: redirectUri);
    } catch (e) {
      if (_isUserCancelled(e)) {
        throw OAuthUserCancelledException(
          '카카오톡 로그인 취소/실패: ${_normalizeErrorMessage(e)}',
        );
      }
      try {
        return await client.authorize(redirectUri: redirectUri);
      } catch (fallbackError) {
        if (_isUserCancelled(fallbackError)) {
          throw OAuthUserCancelledException(
            '카카오계정 로그인 취소/실패: ${_normalizeErrorMessage(fallbackError)}',
          );
        }
        throw OAuthConfigException(
          '카카오 인증 코드 요청 실패.\n'
          '- talkError: ${_normalizeErrorMessage(e)}\n'
          '- accountError: ${_normalizeErrorMessage(fallbackError)}',
        );
      }
    }
  }

  Uri _buildAuthorizeUri(OAuth2Provider provider) {
    final redirect = Uri.encodeComponent(_config.oauthRedirectUri);
    switch (provider) {
      case OAuth2Provider.kakao:
        throw const OAuthConfigException('카카오는 SDK 인증 플로우를 사용합니다.');
      case OAuth2Provider.naver:
        throw const OAuthConfigException('네이버는 서버 발급 state로 인증합니다.');
      case OAuth2Provider.google:
        throw const OAuthConfigException('구글은 서버 발급 state로 인증합니다.');
      case OAuth2Provider.apple:
        final id = _config.appleClientId.trim();
        if (id.isEmpty) {
          throw const OAuthConfigException(
            'APPLE_CLIENT_ID(또는 APPLE_SERVICE_ID)가 비어 있습니다. '
            'docs/OAuth-환경변수.md 참고.',
          );
        }
        final state = _randomState();
        return Uri.parse(
          'https://appleid.apple.com/auth/authorize'
          '?response_type=code'
          '&client_id=${Uri.encodeComponent(id)}'
          '&redirect_uri=$redirect'
          '&scope=${Uri.encodeComponent('name email')}'
          '&response_mode=query'
          '&state=$state',
        );
    }
  }

  Uri _buildGoogleAuthorizeUri(String state) {
    final id = _config.googleClientId.trim();
    if (id.isEmpty) {
      throw const OAuthConfigException(
        'GOOGLE_CLIENT_ID(또는 GOOGLE_OAUTH_CLIENT_ID)가 비어 있습니다. '
        'docs/OAuth-환경변수.md 참고.',
      );
    }
    final scope = Uri.encodeComponent('openid email profile');
    final googleRedirect =
        Uri.encodeComponent(_config.googleAuthorizeRedirectUri);
    return Uri.parse(
      'https://accounts.google.com/o/oauth2/v2/auth'
      '?client_id=${Uri.encodeComponent(id)}'
      '&redirect_uri=$googleRedirect'
      '&response_type=code'
      '&scope=$scope'
      '&state=${Uri.encodeComponent(state)}',
    );
  }

  Uri _buildNaverAuthorizeUri(String state) {
    final id = _config.naverClientId.trim();
    if (id.isEmpty) {
      throw const OAuthConfigException(
        'NAVER_CLIENT_ID가 비어 있습니다. --dart-define=NAVER_CLIENT_ID=...',
      );
    }
    final naverRedirect = Uri.encodeComponent(_config.naverAuthorizeRedirectUri);
    return Uri.parse(
      'https://nid.naver.com/oauth2.0/authorize'
      '?response_type=code'
      '&client_id=$id'
      '&redirect_uri=$naverRedirect'
      '&state=${Uri.encodeComponent(state)}',
    );
  }

  String _randomState() {
    final r = Random.secure();
    return List.generate(16, (_) => r.nextInt(16).toRadixString(16)).join();
  }

  bool _isUserCancelled(Object error) {
    final text = error.toString().toLowerCase();
    return text.contains('canceled') || text.contains('cancelled');
  }

  String _normalizeErrorMessage(Object error) {
    final raw = error.toString().replaceAll('\n', ' ').trim();
    if (raw.isEmpty) return error.runtimeType.toString();
    return raw;
  }
}

class OAuthConfigException implements Exception {
  const OAuthConfigException(this.message);
  final String message;

  @override
  String toString() => 'OAuthConfigException: $message';
}

class OAuthUserCancelledException implements Exception {
  OAuthUserCancelledException(this.message);
  final String message;

  @override
  String toString() => message;
}
