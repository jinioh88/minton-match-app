import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';

import 'core/auth/auth_notifier.dart';
import 'core/auth/auth_session.dart';
import 'core/env/app_environment.dart';
import 'core/auth/auth_bootstrap.dart';
import 'core/routing/app_router.dart';
import 'core/routing/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'features/chat/data/push/push_token_sync_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final config = AppEnvironment.appConfig;
  final kakaoNativeAppKey = config.kakaoNativeAppKey.trim();
  if (kakaoNativeAppKey.isNotEmpty) {
    KakaoSdk.init(nativeAppKey: kakaoNativeAppKey);
  }
  runApp(const ProviderScope(child: AuthBootstrap(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AuthSession?>>(authNotifierProvider, (
      prev,
      next,
    ) async {
      final prevToken = switch (prev) {
        AsyncData(:final value) => value?.accessToken,
        _ => null,
      };
      final nextToken = switch (next) {
        AsyncData(:final value) => value?.accessToken,
        _ => null,
      };

      final pushSync = ref.read(pushTokenSyncServiceProvider);
      final router = ref.read(appRouterProvider);
      if ((prevToken == null || prevToken.isEmpty) &&
          (nextToken != null && nextToken.isNotEmpty)) {
        await pushSync.onLogin();
        await pushSync.bindMessageOpenHandler((target) {
          switch (target.kind) {
            case PushOpenKind.matchDetail:
              final matchId = target.matchId;
              if (matchId != null) router.go(AppRoutes.matchDetail(matchId));
            case PushOpenKind.matchChat:
              final matchId = target.matchId;
              if (matchId != null) router.go(AppRoutes.matchChat(matchId));
            case PushOpenKind.notifications:
              router.go(AppRoutes.notifications);
          }
        });
      } else if ((prevToken != null && prevToken.isNotEmpty) &&
          (nextToken == null || nextToken.isEmpty)) {
        await pushSync.onLogout();
      }
    });

    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Minton Match',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
