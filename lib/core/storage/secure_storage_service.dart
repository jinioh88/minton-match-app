import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// `flutter_secure_storage` 래퍼. 키 이름은 이 클래스에서만 관리합니다.
class SecureStorageService {
  SecureStorageService({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _keyAccessToken = 'auth_access_token';
  static const _keyRefreshToken = 'auth_refresh_token';

  Future<String?> readAccessToken() => _storage.read(key: _keyAccessToken);

  Future<void> writeAccessToken(String token) =>
      _storage.write(key: _keyAccessToken, value: token);

  Future<String?> readRefreshToken() => _storage.read(key: _keyRefreshToken);

  Future<void> writeRefreshToken(String token) =>
      _storage.write(key: _keyRefreshToken, value: token);

  Future<void> deleteAccessToken() => _storage.delete(key: _keyAccessToken);

  Future<void> deleteRefreshToken() => _storage.delete(key: _keyRefreshToken);

  /// 로그아웃: 액세스·리프레시 토큰 제거.
  Future<void> clearSessionTokens() async {
    await Future.wait([
      deleteAccessToken(),
      deleteRefreshToken(),
    ]);
  }
}

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});
