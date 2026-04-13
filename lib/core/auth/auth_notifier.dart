import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/secure_storage_service.dart';
import 'auth_session.dart';

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, AuthSession?>(AuthNotifier.new);

/// 저장소와 동기화되는 인증 세션. 로그인/로그아웃은 여기서만 수행하는 것을 권장합니다.
class AuthNotifier extends AsyncNotifier<AuthSession?> {
  static final Duration _storageTimeout =
      kIsWeb ? const Duration(seconds: 8) : const Duration(seconds: 15);

  @override
  Future<AuthSession?> build() async {
    try {
      final storage = ref.read(secureStorageServiceProvider);
      final token = await storage
          .readAccessToken()
          .timeout(_storageTimeout, onTimeout: () => null);
      if (token == null || token.isEmpty) return null;
      final flag = await storage
          .readProfileCompleteFlag()
          .timeout(_storageTimeout, onTimeout: () => null);
      final complete = flag ?? true;
      return AuthSession(accessToken: token, profileComplete: complete);
    } catch (_) {
      return null;
    }
  }

  Future<void> onOAuthLoginSuccess({
    required String accessToken,
    required bool profileComplete,
    String? refreshToken,
  }) async {
    final storage = ref.read(secureStorageServiceProvider);
    await storage.writeAccessToken(accessToken);
    await storage.writeProfileCompleteFlag(profileComplete);
    if (refreshToken != null && refreshToken.isNotEmpty) {
      await storage.writeRefreshToken(refreshToken);
    }
    state = AsyncData(
      AuthSession(
        accessToken: accessToken,
        profileComplete: profileComplete,
      ),
    );
  }

  /// 프로필 설정 완료 후 라우팅용 플래그만 갱신합니다.
  Future<void> markProfileComplete() async {
    final current = switch (state) {
      AsyncData(:final value) => value,
      _ => null,
    };
    if (current == null) return;
    await ref.read(secureStorageServiceProvider).writeProfileCompleteFlag(true);
    state = AsyncData(
      AuthSession(
        accessToken: current.accessToken,
        profileComplete: true,
      ),
    );
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
    AsyncData(:final value) => value?.accessToken,
    _ => null,
  };
});
