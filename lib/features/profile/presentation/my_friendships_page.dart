import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_error_snackbar.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../data/profile_repository.dart';
import 'my_friendships_provider.dart';

class MyFriendshipsPage extends ConsumerWidget {
  const MyFriendshipsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(myFollowingsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('내 팔로잉')),
      body: async.when(
        data: (items) {
          if (items.isEmpty)
            return const Center(child: Text('팔로우한 사용자가 없습니다.'));
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFE2E8F0)),
                ),
                title: Text(item.nickname ?? '알 수 없음'),
                subtitle: Text('급수: ${item.level ?? '-'}'),
                trailing: TextButton(
                  onPressed: () async {
                    try {
                      await ref
                          .read(profileRepositoryProvider)
                          .unfollowUser(item.userId);
                      ref.invalidate(myFollowingsProvider);
                    } catch (e) {
                      if (!context.mounted) return;
                      showApiErrorSnackBar(context, e);
                    }
                  },
                  child: const Text('언팔로우'),
                ),
              );
            },
          );
        },
        loading: () => const AppLoadingIndicator(message: '팔로잉 목록을 불러오는 중...'),
        error: (e, _) => AppErrorMessageView(
          message: apiErrorUserMessage(e),
          onRetry: () => ref.invalidate(myFollowingsProvider),
        ),
      ),
    );
  }
}
