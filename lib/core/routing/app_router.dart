import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';
import '../../features/chat/presentation/chat_tab_page.dart';
import '../../features/chat/presentation/chat_room_page.dart';
import '../../features/chat/presentation/chat_providers.dart';
import '../../features/chat/presentation/notifications_page.dart';
import '../../features/home/presentation/home_tab_page.dart';
import '../../features/match/presentation/create_match_page.dart';
import '../../features/match/presentation/edit_match_page.dart';
import '../../features/match/presentation/match_detail_page.dart';
import '../../features/match/presentation/write_review_page.dart';
import '../../features/profile/presentation/profile_setup_page.dart';
import '../../features/profile/presentation/profile_tab_page.dart';
import '../../features/profile/presentation/my_hosted_matches_page.dart';
import '../../features/profile/presentation/my_participated_matches_page.dart';
import '../../features/profile/presentation/my_review_hub_page.dart';
import '../../features/profile/presentation/my_friendships_page.dart';
import '../../features/profile/presentation/notices_page.dart';
import '../../features/profile/presentation/support_center_page.dart';
import '../../features/profile/presentation/account_management_page.dart';
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
      GoRoute(
        path: AppRoutes.createMatch,
        builder: (context, state) => const CreateMatchPage(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, state) => const NotificationsPage(),
      ),
      GoRoute(
        path: AppRoutes.myHostedMatches,
        builder: (context, state) => const MyHostedMatchesPage(),
      ),
      GoRoute(
        path: AppRoutes.myParticipatedMatches,
        builder: (context, state) => const MyParticipatedMatchesPage(),
      ),
      GoRoute(
        path: AppRoutes.myReviewHub,
        builder: (context, state) => const MyReviewHubPage(),
      ),
      GoRoute(
        path: AppRoutes.myFriendships,
        builder: (context, state) => const MyFriendshipsPage(),
      ),
      GoRoute(
        path: AppRoutes.notices,
        builder: (context, state) => const NoticesPage(),
      ),
      GoRoute(
        path: '/notices/:noticeId',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['noticeId'] ?? '') ?? 0;
          return NoticeDetailPage(noticeId: id);
        },
      ),
      GoRoute(
        path: AppRoutes.supportCenter,
        builder: (context, state) => const SupportCenterPage(),
      ),
      GoRoute(
        path: AppRoutes.accountManagement,
        builder: (context, state) => const AccountManagementPage(),
      ),
      GoRoute(
        path: '/chat/rooms/:roomId',
        builder: (context, state) {
          final roomId =
              int.tryParse(state.pathParameters['roomId'] ?? '') ?? 0;
          return ChatRoomPage(roomId: roomId);
        },
      ),
      GoRoute(
        path: '/matches/:matchId/chat',
        builder: (context, state) {
          final matchId =
              int.tryParse(state.pathParameters['matchId'] ?? '') ?? 0;
          return _MatchChatEntryPage(matchId: matchId);
        },
      ),
      GoRoute(
        path: '/matches/:matchId/reviews/write/:revieweeId',
        builder: (context, state) {
          final matchId =
              int.tryParse(state.pathParameters['matchId'] ?? '') ?? 0;
          final revieweeId =
              int.tryParse(state.pathParameters['revieweeId'] ?? '') ?? 0;
          return WriteReviewPage(matchId: matchId, revieweeId: revieweeId);
        },
      ),
      GoRoute(
        path: '/matches/:matchId',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['matchId'] ?? '') ?? 0;
          return MatchDetailPage(matchId: id);
        },
      ),
      GoRoute(
        path: '/matches/:matchId/edit',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['matchId'] ?? '') ?? 0;
          return EditMatchPage(matchId: id);
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

class _MatchChatEntryPage extends ConsumerWidget {
  const _MatchChatEntryPage({required this.matchId});

  final int matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(matchChatRoomProvider(matchId));
    return async.when(
      data: (detail) => ChatRoomPage(roomId: detail.roomId),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: const Text('채팅방 진입')),
        body: Center(child: Text(e.toString())),
      ),
    );
  }
}
