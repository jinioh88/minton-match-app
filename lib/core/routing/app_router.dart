import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';
import '../../features/chat/presentation/chat_tab_page.dart';
import '../../features/home/presentation/home_tab_page.dart';
import '../../features/profile/presentation/profile_setup_page.dart';
import '../../features/profile/presentation/profile_tab_page.dart';
import '../../features/profile/presentation/user_profile_page.dart';
import '../auth/auth_notifier.dart';
import '../auth/auth_session.dart';
import 'app_routes.dart';
import 'main_shell.dart';
import 'splash_page.dart';

bool _isPublicUserProfilePath(String path) {
  final segs = path.split('/')..removeWhere((s) => s.isEmpty);
  if (segs.length != 2) return false;
  if (segs[0] != 'users') return false;
  return int.tryParse(segs[1]) != null;
}

final appRouterProvider = Provider<GoRouter>((ref) {
  final authRefresh = ValueNotifier<int>(0);
  ref.listen<AsyncValue<AuthSession?>>(
    authNotifierProvider,
    (previous, next) => authRefresh.value++,
  );

  String? redirect(BuildContext context, GoRouterState state) {
    final auth = ref.read(authNotifierProvider);
    final path = state.uri.path;

    if (auth.isLoading) {
      if (path == AppRoutes.splash) return null;
      return AppRoutes.splash;
    }

    final session = switch (auth) {
      AsyncData(:final value) => value,
      _ => null,
    };

    if (session == null || session.accessToken.isEmpty) {
      // 스플래시는 "인증 로딩 중"일 때만 머무름. 로딩이 끝났는데도 /splash에 있으면
      // SplashPage(로딩 UI만)에 갇히므로 반드시 로그인으로 보냄.
      if (path == AppRoutes.login || _isPublicUserProfilePath(path)) {
        return null;
      }
      return AppRoutes.login;
    }

    final needSetup = !session.profileComplete;

    if (needSetup) {
      if (path == AppRoutes.profileSetup || _isPublicUserProfilePath(path)) {
        return null;
      }
      return AppRoutes.profileSetup;
    }

    if (path == AppRoutes.profileSetup) {
      return AppRoutes.home;
    }

    if (path == AppRoutes.splash || path == AppRoutes.login) {
      return AppRoutes.home;
    }

    return null;
  }

  final router = GoRouter(
    initialLocation: AppRoutes.splash,
    refreshListenable: authRefresh,
    redirect: redirect,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.profileSetup,
        builder: (context, state) => const ProfileSetupPage(),
      ),
      GoRoute(
        path: '/users/:userId',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['userId'] ?? '') ?? 0;
          return UserProfilePage(userId: id);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) => const HomeTabPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.chat,
                builder: (context, state) => const ChatTabPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.profile,
                builder: (context, state) => const ProfileTabPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  ref.onDispose(() {
    router.dispose();
    authRefresh.dispose();
  });

  return router;
});
