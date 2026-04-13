/// Sprint 1 API `Provider` enum과 동일한 값.
enum OAuth2Provider {
  kakao,
  naver,
  google,
  apple,
}

extension OAuth2ProviderApi on OAuth2Provider {
  String get apiName => switch (this) {
        OAuth2Provider.kakao => 'KAKAO',
        OAuth2Provider.naver => 'NAVER',
        OAuth2Provider.google => 'GOOGLE',
        OAuth2Provider.apple => 'APPLE',
      };
}
