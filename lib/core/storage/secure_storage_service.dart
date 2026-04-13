import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// `flutter_secure_storage` 래퍼. 키 이름은 이 클래스에서만 관리합니다.
class SecureStorageService {
  SecureStorageService({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _keyAccessToken = 'auth_access_token';
  static const _keyRefreshToken = 'auth_refresh_token';
  static const _keyProfileComplete = 'auth_profile_complete';

  Future<String?> readAccessToken() => _storage.read(key: _keyAccessToken);

  Future<void> writeAccessToken(String token) =>
      _storage.write(key: _keyAccessToken, value: token);

  Future<String?> readRefreshToken() => _storage.read(key: _keyRefreshToken);

  Future<void> writeRefreshToken(String token) =>
      _storage.write(key: _keyRefreshToken, value: token);

  Future<void> deleteAccessToken() => _storage.delete(key: _keyAccessToken);

  Future<void> deleteRefreshToken() => _storage.delete(key: _keyRefreshToken);

  /// OAuth 로그인 직후 서버가 알려준 값. 없으면(구버전 저장소) `null`.
  Future<bool?> readProfileCompleteFlag() async {
    final v = await _storage.read(key: _keyProfileComplete);
    if (v == null) return null;
    return v == 'true';
  }

  Future<void> writeProfileCompleteFlag(bool value) => _storage.write(
        key: _keyProfileComplete,
        value: value ? 'true' : 'false',
      );

  Future<void> deleteProfileCompleteFlag() =>
      _storage.delete(key: _keyProfileComplete);

  /// 로그아웃: 액세스·리프레시 토큰·프로필 완료 플래그 제거.
  Future<void> clearSessionTokens() async {
    await Future.wait([
      deleteAccessToken(),
      deleteRefreshToken(),
      deleteProfileCompleteFlag(),
    ]);
  }
}

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});
