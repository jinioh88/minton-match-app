import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';
import '../../features/chat/presentation/chat_tab_page.dart';
import '../../features/home/presentation/home_tab_page.dart';
import '../../features/profile/presentation/profile_tab_page.dart';
import '../auth/auth_notifier.dart';
import 'app_routes.dart';
import 'main_shell.dart';
import 'splash_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authRefresh = ValueNotifier<int>(0);
  ref.listen<AsyncValue<String?>>(
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

    final token = switch (auth) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final loggedIn = token != null && token.isNotEmpty;

    if (!loggedIn) {
      if (path == AppRoutes.login) return null;
      return AppRoutes.login;
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
