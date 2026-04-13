import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import 'user_profile_by_id_provider.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_fields_section.dart';
import 'widgets/profile_stats_strip.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (userId <= 0) {
      return Scaffold(
        appBar: AppBar(title: const Text('프로필')),
        body: const AppErrorMessageView(message: '잘못된 사용자입니다.'),
      );
    }

    final async = ref.watch(userProfileByIdProvider(userId));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('프로필'),
      ),
      body: async.when(
        data: (p) => ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Center(child: ProfileAvatar(imageUrl: p.profileImg, radius: 48)),
            const SizedBox(height: 16),
            ProfileStatsStrip(profile: p, emphasizeTrust: true),
            const SizedBox(height: 8),
            ProfileFieldsSection(profile: p),
          ],
        ),
        loading: () => const AppLoadingIndicator(),
        error: (e, _) => AppErrorMessageView(message: e.toString()),
      ),
    );
  }
}
