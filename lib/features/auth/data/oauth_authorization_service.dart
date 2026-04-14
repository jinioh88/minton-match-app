import 'package:flutter/foundation.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_naver_login/interface/types/naver_login_status.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../core/env/app_config.dart';
import '../../../core/env/app_environment.dart';
import '../domain/oauth2_provider.dart';

/// 소셜사 네이티브 SDK를 통해 access token을 획득합니다.
class OAuthAuthorizationService {
  OAuthAuthorizationService({AppConfig? config})
      : _config = config ?? AppEnvironment.appConfig;

  final AppConfig _config;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  bool _googleInitialized = false;

  Future<String> obtainSocialAccessToken(OAuth2Provider provider) async {
    if (provider == OAuth2Provider.kakao) {
      return _obtainKakaoAccessToken();
    }
    if (provider == OAuth2Provider.naver) {
      return _obtainNaverAccessToken();
    }
    if (provider == OAuth2Provider.google) {
      return _obtainGoogleAccessToken();
    }
    throw const OAuthConfigException(
      'Apple은 현재 앱 네이티브 socialAccessToken 로그인 미지원입니다.',
    );
  }

  Future<String> _obtainKakaoAccessToken() async {
    final nativeAppKey = _config.kakaoNativeAppKey.trim();
    if (nativeAppKey.isEmpty) {
      throw const OAuthConfigException(
        'KAKAO_NATIVE_APP_KEY가 비어 있습니다. '
        '--dart-define-from-file=dart_defines.oauth.local.env 등으로 주입하세요.',
      );
    }
    try {
      final bool installed = await isKakaoTalkInstalled();
      if (installed) {
        try {
          final token = await UserApi.instance.loginWithKakaoTalk();
          return _requireKakaoAccessToken(token);
        } catch (talkError) {
          if (_isUserCancelled(talkError)) {
            rethrow;
          }
          final token = await UserApi.instance.loginWithKakaoAccount();
          return _requireKakaoAccessToken(token);
        }
      }
      final token = await UserApi.instance.loginWithKakaoAccount();
      return _requireKakaoAccessToken(token);
    } catch (e) {
      if (_isUserCancelled(e)) {
        throw OAuthUserCancelledException(
          '카카오 로그인 취소/실패: ${_normalizeErrorMessage(e)}',
        );
      }
      throw OAuthConfigException('카카오 로그인 실패: ${_normalizeErrorMessage(e)}');
    }
  }

  String _requireKakaoAccessToken(OAuthToken token) {
    if (token.accessToken.isEmpty) {
      throw const OAuthConfigException('카카오 access token이 비어 있습니다.');
    }
    return token.accessToken;
  }

  Future<String> _obtainNaverAccessToken() async {
    try {
      final result = await FlutterNaverLogin.logIn();
      switch (result.status) {
        case NaverLoginStatus.loggedIn:
          final token =
              result.accessToken?.accessToken ??
              (await FlutterNaverLogin.getCurrentAccessToken()).accessToken;
          if (token.trim().isEmpty) {
            throw const OAuthConfigException('네이버 access token이 비어 있습니다.');
          }
          return token;
        case NaverLoginStatus.loggedOut:
          throw OAuthUserCancelledException('네이버 로그인이 취소되었습니다.');
        case NaverLoginStatus.error:
          throw OAuthConfigException(
            result.errorMessage ?? '네이버 로그인 중 오류가 발생했습니다.',
          );
      }
    } catch (e) {
      if (e is OAuthUserCancelledException || e is OAuthConfigException) rethrow;
      throw OAuthConfigException('네이버 로그인 실패: ${_normalizeErrorMessage(e)}');
    }
  }

  Future<String> _obtainGoogleAccessToken() async {
    if (kIsWeb) {
      throw const OAuthConfigException('Google 네이티브 로그인은 모바일 앱에서만 지원합니다.');
    }
    try {
      if (!_googleInitialized) {
        await _googleSignIn.initialize();
        _googleInitialized = true;
      }
      final account = await _googleSignIn.authenticate(
        scopeHint: const ['email', 'profile', 'openid'],
      );
      final authorization = await account.authorizationClient.authorizeScopes(
        const ['email', 'profile', 'openid'],
      );
      if (authorization.accessToken.trim().isEmpty) {
        throw const OAuthConfigException('구글 access token이 비어 있습니다.');
      }
      return authorization.accessToken;
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled ||
          e.code == GoogleSignInExceptionCode.interrupted ||
          e.code == GoogleSignInExceptionCode.uiUnavailable) {
        throw OAuthUserCancelledException('구글 로그인이 취소되었습니다.');
      }
      throw OAuthConfigException('구글 로그인 실패: ${e.description ?? e.code.name}');
    } catch (e) {
      if (e is OAuthConfigException) rethrow;
      throw OAuthConfigException('구글 로그인 실패: ${_normalizeErrorMessage(e)}');
    }
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
