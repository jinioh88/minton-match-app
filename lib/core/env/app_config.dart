import 'package:flutter/foundation.dart';

/// `dev` / `prod` 구분. `--dart-define=APP_ENV=...` 와 매핑됩니다.
enum AppFlavor {
  dev,
  prod,
}

/// Phase 0 문서의 **ApiConfig** 역할을 포함합니다.
///
/// OAuth 클라이언트 ID는 **저장소에 하드코딩하지 않고** `--dart-define` 또는
/// `--dart-define-from-file=*.env` 로 주입합니다. Next.js `NEXT_PUBLIC_*_CLIENT_ID`와
/// 백엔드 `KAKAO_CLIENT_ID` 등과 **동일한 값**을 쓰는 것을 권장합니다.
///
/// **카카오**
/// - 인가 URL의 `client_id` → `KAKAO_CLIENT_ID`(REST API 키 등, Next·백엔드와 동일).
/// - 모바일 리다이렉트 → 콘솔 **REST API 키** 화면의 리다이렉트 입력란에는 `http(s)://`만
///   허용되는 경우가 많음. 앱은 **`kakao{네이티브앱키}://oauth`** 형식을 쓰고,
///   **앱 설정 → 플랫폼(Android/iOS)** 쪽에 리다이렉트를 등록하는 흐름이 일반적입니다.
/// - `KAKAO_NATIVE_APP_KEY`만 넣고 `OAUTH_REDIRECT_URI`를 비우면 위 형식으로 자동 설정합니다.
///
/// 자세한 매핑은 `docs/OAuth-환경변수.md` 참고.
@immutable
class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.apiBaseUrl,
    this.kakaoClientId = '',
    this.oauthRedirectUri = 'com.mintonmatch.app://oauth/callback',
    this.oauthCallbackUrlScheme = 'com.mintonmatch.app',
    this.naverOAuthRedirectUri = '',
    this.googleOAuthRedirectUri = '',
    this.naverClientId = '',
    this.googleClientId = '',
    this.appleClientId = '',
    this.kakaoNativeAppKey = '',
  });

  final AppFlavor flavor;
  final String apiBaseUrl;

  /// 카카오 OAuth 인가 URL의 `client_id` (REST API 키 등, 백엔드 `KAKAO_CLIENT_ID`와 동일 권장).
  final String kakaoClientId;

  /// OAuth 리다이렉트 URI (백엔드·제공자 콘솔에 등록된 값과 동일해야 함).
  final String oauthRedirectUri;

  /// [flutter_web_auth_2]용 스킴 (호스트 없이 스킴만 사용).
  final String oauthCallbackUrlScheme;

  /// 네이버 인가 URL의 `redirect_uri` (HTTP 브리지). 비우면 [oauthRedirectUri] 사용.
  final String naverOAuthRedirectUri;

  /// 구글 인가 URL의 `redirect_uri` (HTTP/HTTPS 브리지). 비우면 [oauthRedirectUri] 사용.
  final String googleOAuthRedirectUri;

  final String naverClientId;

  /// Google OAuth `client_id`.
  final String googleClientId;

  /// Apple Sign in 웹 플로우용 Services ID 등 (`client_id`).
  final String appleClientId;

  /// 카카오 콘솔 **네이티브 앱 키** (REST API 키와 다름). `kakao{이값}://oauth` 구성에 사용.
  final String kakaoNativeAppKey;

  /// 네이버 OAuth 인가 요청·백엔드 `oauth/login`의 `redirectUri`에 쓸 값.
  String get naverAuthorizeRedirectUri {
    final n = naverOAuthRedirectUri.trim();
    if (n.isNotEmpty) return n;
    return oauthRedirectUri;
  }

  /// 구글 OAuth 인가 요청·백엔드 `oauth/login`의 `redirectUri`에 쓸 값.
  String get googleAuthorizeRedirectUri {
    final g = googleOAuthRedirectUri.trim();
    if (g.isNotEmpty) return g;
    return oauthRedirectUri;
  }

  /// 카카오 SDK 인가 코드 플로우에서 사용할 redirect URI.
  String get kakaoSdkRedirectUri {
    final configured = oauthRedirectUri.trim();
    final configuredUri = Uri.tryParse(configured);
    if (configuredUri != null &&
        configuredUri.hasScheme &&
        configuredUri.scheme.startsWith('kakao')) {
      return configured;
    }
    final native = kakaoNativeAppKey.trim();
    if (native.isNotEmpty) return 'kakao$native://oauth';
    return configured;
  }

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;

  /// 컴파일 타임 `String.fromEnvironment`만 사용합니다 (런타임 `.env` 없음).
  static AppConfig fromDartDefines() {
    const envName = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
    const baseUrlOverride = String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: '',
    );
    const kakaoPrimary = String.fromEnvironment(
      'KAKAO_CLIENT_ID',
      defaultValue: '',
    );
    const kakaoLegacy = String.fromEnvironment(
      'KAKAO_NATIVE_KEY',
      defaultValue: '',
    );
    final kakaoResolved = _preferNonEmpty(kakaoPrimary, kakaoLegacy);

    const oauthRedirectRaw = String.fromEnvironment(
      'OAUTH_REDIRECT_URI',
      defaultValue: '',
    );
    const kakaoNativeAppKeyRaw = String.fromEnvironment(
      'KAKAO_NATIVE_APP_KEY',
      defaultValue: '',
    );
    const oauthSchemeRaw = String.fromEnvironment(
      'OAUTH_CALLBACK_SCHEME',
      defaultValue: '',
    );
    const naverOAuthRedirectRaw = String.fromEnvironment(
      'NAVER_OAUTH_REDIRECT_URI',
      defaultValue: '',
    );
    const googleOAuthRedirectRaw = String.fromEnvironment(
      'GOOGLE_OAUTH_REDIRECT_URI',
      defaultValue: '',
    );

    final redirectOverride = oauthRedirectRaw.trim();
    final nativeAppKey = kakaoNativeAppKeyRaw.trim();

    final oauthRedirect = redirectOverride.isNotEmpty
        ? redirectOverride
        : (nativeAppKey.isNotEmpty
            ? 'kakao$nativeAppKey://oauth'
            : 'com.mintonmatch.app://oauth/callback');
    final oauthScheme = _resolveCallbackScheme(
      schemeOverride: oauthSchemeRaw,
      redirectUri: oauthRedirect,
      kakaoNativeAppKey: nativeAppKey,
    );

    const naverId = String.fromEnvironment(
      'NAVER_CLIENT_ID',
      defaultValue: '',
    );
    const googlePrimary = String.fromEnvironment(
      'GOOGLE_CLIENT_ID',
      defaultValue: '',
    );
    const googleLegacy = String.fromEnvironment(
      'GOOGLE_OAUTH_CLIENT_ID',
      defaultValue: '',
    );
    final googleResolved = _preferNonEmpty(googlePrimary, googleLegacy);

    const applePrimary = String.fromEnvironment(
      'APPLE_CLIENT_ID',
      defaultValue: '',
    );
    const appleLegacy = String.fromEnvironment(
      'APPLE_SERVICE_ID',
      defaultValue: '',
    );
    final appleResolved = _preferNonEmpty(applePrimary, appleLegacy);

    final flavor = _parseFlavor(envName);
    final resolvedBase = baseUrlOverride.trim().isNotEmpty
        ? baseUrlOverride.trim()
        : _defaultBaseUrl(flavor);

    return AppConfig(
      flavor: flavor,
      apiBaseUrl: _stripTrailingSlash(resolvedBase),
      kakaoClientId: kakaoResolved,
      oauthRedirectUri: oauthRedirect,
      oauthCallbackUrlScheme: oauthScheme,
      naverOAuthRedirectUri: naverOAuthRedirectRaw.trim(),
      googleOAuthRedirectUri: googleOAuthRedirectRaw.trim(),
      naverClientId: naverId,
      googleClientId: googleResolved,
      appleClientId: appleResolved,
      kakaoNativeAppKey: nativeAppKey,
    );
  }

  static String _resolveCallbackScheme({
    required String schemeOverride,
    required String redirectUri,
    required String kakaoNativeAppKey,
  }) {
    final st = schemeOverride.trim();
    if (st.isNotEmpty) return st;
    final u = Uri.tryParse(redirectUri);
    if (u != null && u.hasScheme && u.scheme.isNotEmpty) {
      return u.scheme;
    }
    if (kakaoNativeAppKey.isNotEmpty) {
      return 'kakao$kakaoNativeAppKey';
    }
    return 'com.mintonmatch.app';
  }

  static String _preferNonEmpty(String a, String b) {
    final t = a.trim();
    if (t.isNotEmpty) return t;
    return b.trim();
  }

  static AppFlavor _parseFlavor(String raw) {
    switch (raw.toLowerCase()) {
      case 'prod':
      case 'production':
      case 'release':
        return AppFlavor.prod;
      default:
        return AppFlavor.dev;
    }
  }

  static String _defaultBaseUrl(AppFlavor flavor) {
    return switch (flavor) {
      AppFlavor.dev => 'http://localhost:8080',
      AppFlavor.prod => 'https://api.minton-match.com',
    };
  }

  static String _stripTrailingSlash(String url) {
    if (url.isEmpty) return url;
    return url.endsWith('/') ? url.substring(0, url.length - 1) : url;
  }
}
