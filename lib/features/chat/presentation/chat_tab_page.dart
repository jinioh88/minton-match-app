import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../data/realtime/chat_realtime_service.dart';
import 'chat_providers.dart';

enum _ChatFilter { ongoing, past }

class ChatTabPage extends ConsumerStatefulWidget {
  const ChatTabPage({super.key});

  @override
  ConsumerState<ChatTabPage> createState() => _ChatTabPageState();
}

class _ChatTabPageState extends ConsumerState<ChatTabPage> {
  _ChatFilter _filter = _ChatFilter.ongoing;
  StreamSubscription? _notificationSubscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final service = ref.read(chatRealtimeServiceProvider);
      final connected = await service.ensureConnected();
      if (!connected) return;
      _notificationSubscription = service.notifications.listen((_) {
        ref.invalidate(unreadNotificationCountProvider);
        ref.invalidate(notificationsProvider(const NotificationsQuery()));
      });
    });
  }

  @override
  void dispose() {
    _notificationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(chatRoomListViewProvider(const ChatRoomsQuery()));
    final unreadAsync = ref.watch(unreadNotificationCountProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F172A),
        elevation: 0,
        title: const Text('채팅'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppRoutes.notifications),
            icon: Badge(
              isLabelVisible: (unreadAsync.asData?.value ?? 0) > 0,
              label: Text('${unreadAsync.asData?.value ?? 0}'),
              child: const Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: async.when(
        data: (views) {
          final items = switch (_filter) {
            _ChatFilter.ongoing => views.where((e) => !e.isPastMatch).toList(),
            _ChatFilter.past => views.where((e) => e.isPastMatch).toList(),
          };

          final emptyLabel = _filter == _ChatFilter.ongoing ? '진행 중인' : '지난';
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(chatRoomListViewProvider(const ChatRoomsQuery()));
              ref.invalidate(unreadNotificationCountProvider);
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 8),
                  child: SegmentedButton<_ChatFilter>(
                    style: SegmentedButton.styleFrom(
                      backgroundColor: Colors.white,
                      selectedBackgroundColor: const Color(0xFFE8EEFF),
                      selectedForegroundColor: const Color(0xFF3B5BFF),
                      foregroundColor: const Color(0xFF475569),
                      side: const BorderSide(color: Color(0xFFE2E8F0)),
                    ),
                    segments: const [
                      ButtonSegment(
                        value: _ChatFilter.ongoing,
                        label: Text('진행 중인 매칭'),
                      ),
                      ButtonSegment(
                        value: _ChatFilter.past,
                        label: Text('지난 매칭'),
                      ),
                    ],
                    selected: <_ChatFilter>{_filter},
                    onSelectionChanged: (selected) {
                      setState(() => _filter = selected.first);
                    },
                  ),
                ),
                Expanded(
                  child: items.isEmpty
                      ? Center(child: Text('$emptyLabel 채팅방이 없습니다.'))
                      : ListView.separated(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                          itemCount: items.length,
                          separatorBuilder: (_, _) => const SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            final view = items[index];
                            final item = view.item;
                            return InkWell(
                              onTap: () =>
                                  context.push(AppRoutes.chatRoom(item.roomId)),
                              borderRadius: BorderRadius.circular(12),
                              child: Ink(
                                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: const Color(0xFFE2E8F0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: const Color(0xFFE8EEFF),
                                      child: Text(
                                        item.matchTitle.isNotEmpty
                                            ? item.matchTitle[0]
                                            : 'M',
                                        style: const TextStyle(
                                          color: Color(0xFF3B5BFF),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  item.matchTitle,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                        color: const Color(0xFF0F172A),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                ),
                                              ),
                                              const SizedBox(width: 6),
                                              _StatusChip(
                                                status: view.matchStatus,
                                              ),
                                              if (view.myRoleLabel != null) ...[
                                                const SizedBox(width: 4),
                                                _RoleChip(
                                                  label: view.myRoleLabel!,
                                                ),
                                              ],
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            item.lastMessagePreview
                                                        ?.trim()
                                                        .isNotEmpty ==
                                                    true
                                                ? item.lastMessagePreview!
                                                : '메시지가 없습니다.',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  fontSize: 12,
                                                  color: const Color(
                                                    0xFF64748B,
                                                  ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          _shortDateTime(item.lastMessageAt),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: const Color(0xFF64748B),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          );
        },
        loading: () => const AppLoadingIndicator(message: '채팅 목록을 불러오는 중...'),
        error: (e, _) => AppErrorMessageView(
          message: apiErrorUserMessage(e),
          onRetry: () =>
              ref.invalidate(chatRoomListViewProvider(const ChatRoomsQuery())),
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (status) {
      'RECRUITING' => ('모집중', Colors.green),
      'CLOSED' => ('마감', Colors.orange),
      'FINISHED' => ('종료', Colors.grey),
      'CANCELLED' => ('취소', Colors.red),
      _ => ('-', Colors.blueGrey),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 10.5,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _RoleChip extends StatelessWidget {
  const _RoleChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFFE0F2FE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF0369A1),
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

String _shortDateTime(String? raw) {
  if (raw == null || raw.trim().isEmpty) return '-';
  if (raw.length < 16) return raw;
  return raw.substring(5, 16).replaceFirst('T', ' ');
}
