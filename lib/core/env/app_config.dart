import 'package:flutter/foundation.dart';

/// `dev` / `prod` 구분. `--dart-define=APP_ENV=...` 와 매핑됩니다.
enum AppFlavor {
  dev,
  prod,
}

/// Phase 0 문서의 **ApiConfig** 역할을 포함합니다.
/// API 베이스 URL, 카카오 키 등은 `--dart-define`으로 주입합니다.
@immutable
class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.apiBaseUrl,
    this.kakaoNativeKey = '',
  });

  final AppFlavor flavor;
  final String apiBaseUrl;
  final String kakaoNativeKey;

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;

  /// 컴파일 타임 `String.fromEnvironment`만 사용합니다 (런타임 `.env` 없음).
  static AppConfig fromDartDefines() {
    const envName = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
    const baseUrlOverride = String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: '',
    );
    const kakaoKey = String.fromEnvironment(
      'KAKAO_NATIVE_KEY',
      defaultValue: '',
    );

    final flavor = _parseFlavor(envName);
    final resolvedBase = baseUrlOverride.trim().isNotEmpty
        ? baseUrlOverride.trim()
        : _defaultBaseUrl(flavor);

    return AppConfig(
      flavor: flavor,
      apiBaseUrl: _stripTrailingSlash(resolvedBase),
      kakaoNativeKey: kakaoKey,
    );
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
