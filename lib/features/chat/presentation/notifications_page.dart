import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_error_snackbar.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../data/chat_repository.dart';
import '../data/dto/notification_dto.dart';
import 'chat_providers.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(notificationsProvider(const NotificationsQuery()));
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F172A),
        elevation: 0,
        title: const Text('알림 센터'),
        actions: [
          TextButton(
            onPressed: () async {
              try {
                await ref.read(chatRepositoryProvider).readAllNotifications();
                ref.invalidate(
                  notificationsProvider(const NotificationsQuery()),
                );
                ref.invalidate(unreadNotificationCountProvider);
              } catch (e) {
                if (!context.mounted) return;
                showApiErrorSnackBar(context, e);
              }
            },
            child: const Text('전체 읽음'),
          ),
        ],
      ),
      body: async.when(
        data: (page) {
          if (page.content.isEmpty) {
            return const Center(child: Text('알림이 없습니다.'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(notificationsProvider(const NotificationsQuery()));
              ref.invalidate(unreadNotificationCountProvider);
            },
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 20),
              itemCount: page.content.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final item = page.content[index];
                return _NotificationTile(item: item);
              },
            ),
          );
        },
        loading: () => const AppLoadingIndicator(message: '알림을 불러오는 중...'),
        error: (e, _) => AppErrorMessageView(
          message: apiErrorUserMessage(e),
          onRetry: () =>
              ref.invalidate(notificationsProvider(const NotificationsQuery())),
        ),
      ),
    );
  }
}

class _NotificationTile extends ConsumerWidget {
  const _NotificationTile({required this.item});

  final NotificationItemDto item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = item.readAt == null;
    final bodyText = _resolvedBody(item);
    final icon = _iconForType(item.type);
    final typeLabel = _labelForType(item.type);

    return InkWell(
      onTap: () async {
        try {
          if (unread) {
            await ref
                .read(chatRepositoryProvider)
                .readNotification(item.notificationId);
            ref.invalidate(notificationsProvider(const NotificationsQuery()));
            ref.invalidate(unreadNotificationCountProvider);
          }
          if (!context.mounted) return;
          final matchId = item.relatedMatchId;
          if (matchId != null) {
            if (_openChatTypes.contains(item.type)) {
              context.push(AppRoutes.matchChat(matchId));
            } else {
              context.push(AppRoutes.matchDetail(matchId));
            }
          }
        } catch (e) {
          if (!context.mounted) return;
          showApiErrorSnackBar(context, e);
        }
      },
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: unread ? const Color(0xFFBFDBFE) : const Color(0xFFE2E8F0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (unread)
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.only(top: 6),
                decoration: const BoxDecoration(
                  color: Color(0xFF2563EB),
                  shape: BoxShape.circle,
                ),
              )
            else
              const SizedBox(width: 8, height: 8),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(icon, size: 16, color: const Color(0xFF475569)),
                      const SizedBox(width: 4),
                      Text(
                        typeLabel,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: const Color(0xFF334155),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: const Color(0xFF111827),
                      fontWeight: unread ? FontWeight.w700 : FontWeight.w600,
                    ),
                  ),
                  if (bodyText.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      bodyText,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF1F2937),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  const SizedBox(height: 6),
                  Text(
                    _shortDateTime(item.createdAt),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF334155),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const Set<String> _openChatTypes = {
  'PARTICIPATION_ACCEPTED',
  'WAITLIST_SLOT_OFFER',
  'WAITLIST_EMERGENCY_OPEN',
};

String _resolvedBody(NotificationItemDto item) {
  final body = item.body?.trim();
  if (body != null && body.isNotEmpty) return body;
  return switch (item.type) {
    'MATCH_APPLICATION' => '새로운 참여 신청이 도착했습니다.',
    'PARTICIPATION_ACCEPTED' => '참여가 확정되었습니다. 채팅방에서 일정을 확인하세요.',
    'PARTICIPATION_REJECTED' => '참여 신청 결과를 확인해 주세요.',
    'WAITLIST_SLOT_OFFER' => '대기열 참석 기회가 열렸습니다. 제한 시간 내 응답해 주세요.',
    'WAITLIST_EMERGENCY_OPEN' => '선착순 참가가 열렸습니다. 빠르게 확인해 주세요.',
    'MATCH_CANCELLED' => '매칭이 취소되었습니다.',
    'FRIEND_CREATED_MATCH' => '팔로우한 사용자의 새 매칭이 등록되었습니다.',
    'FRIEND_CONFIRMED_PARTICIPATION' => '팔로우한 사용자의 참여가 확정되었습니다.',
    _ => '',
  };
}

String _labelForType(String type) {
  return switch (type) {
    'MATCH_APPLICATION' => '참여 신청',
    'PARTICIPATION_ACCEPTED' => '참여 확정',
    'PARTICIPATION_REJECTED' => '참여 결과',
    'WAITLIST_SLOT_OFFER' => '대기열',
    'WAITLIST_EMERGENCY_OPEN' => '긴급 오픈',
    'MATCH_CANCELLED' => '매칭 취소',
    'FRIEND_CREATED_MATCH' => '팔로우',
    'FRIEND_CONFIRMED_PARTICIPATION' => '팔로우',
    _ => '알림',
  };
}

IconData _iconForType(String type) {
  return switch (type) {
    'MATCH_APPLICATION' => Icons.person_add_alt_1,
    'PARTICIPATION_ACCEPTED' => Icons.check_circle_outline,
    'PARTICIPATION_REJECTED' => Icons.cancel_outlined,
    'WAITLIST_SLOT_OFFER' => Icons.hourglass_top,
    'WAITLIST_EMERGENCY_OPEN' => Icons.warning_amber_outlined,
    'MATCH_CANCELLED' => Icons.event_busy_outlined,
    'FRIEND_CREATED_MATCH' => Icons.groups_outlined,
    'FRIEND_CONFIRMED_PARTICIPATION' => Icons.emoji_people_outlined,
    _ => Icons.notifications_none,
  };
}

String _shortDateTime(String raw) {
  if (raw.length < 16) return raw;
  return raw.substring(0, 16).replaceFirst('T', ' ');
}
