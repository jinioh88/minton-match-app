import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/secure_storage_service.dart';

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, String?>(AuthNotifier.new);

/// 저장소와 동기화되는 인증 세션. 로그인/로그아웃은 여기서만 수행하는 것을 권장합니다.
class AuthNotifier extends AsyncNotifier<String?> {
  @override
  Future<String?> build() async {
    try {
      final storage = ref.read(secureStorageServiceProvider);
      return await storage.readAccessToken();
    } catch (_) {
      return null;
    }
  }

  Future<void> onLoginSuccess(
    String accessToken, {
    String? refreshToken,
  }) async {
    final storage = ref.read(secureStorageServiceProvider);
    await storage.writeAccessToken(accessToken);
    if (refreshToken != null && refreshToken.isNotEmpty) {
      await storage.writeRefreshToken(refreshToken);
    }
    state = AsyncData(accessToken);
  }

  Future<void> logout() async {
    final storage = ref.read(secureStorageServiceProvider);
    await storage.clearSessionTokens();
    state = const AsyncData(null);
  }
}

/// Dio [AuthInterceptor]용. 세션 로딩 중·에러 시 `null`.
final accessTokenProvider = Provider<String?>((ref) {
  final auth = ref.watch(authNotifierProvider);
  return switch (auth) {
    AsyncData(:final value) => value,
    _ => null,
  };
});
