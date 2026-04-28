import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../match/data/match_repository.dart';
import '../../profile/data/profile_repository.dart';
import '../data/chat_repository.dart';
import '../data/dto/chat_dto.dart';
import '../data/dto/notification_dto.dart';

class ChatRoomListItemView {
  const ChatRoomListItemView({
    required this.item,
    required this.matchStatus,
    this.myRoleLabel,
  });

  final ChatRoomListItemDto item;
  final String matchStatus;
  final String? myRoleLabel;

  bool get isPastMatch =>
      matchStatus == 'FINISHED' || matchStatus == 'CANCELLED';
}

class ChatRoomsQuery {
  const ChatRoomsQuery({this.page = 0, this.size = 20});

  final int page;
  final int size;

  @override
  bool operator ==(Object other) =>
      other is ChatRoomsQuery && other.page == page && other.size == size;

  @override
  int get hashCode => Object.hash(page, size);
}

class NotificationsQuery {
  const NotificationsQuery({this.page = 0, this.size = 20});

  final int page;
  final int size;

  @override
  bool operator ==(Object other) =>
      other is NotificationsQuery && other.page == page && other.size == size;

  @override
  int get hashCode => Object.hash(page, size);
}

final chatRoomsProvider =
    FutureProvider.family<ChatRoomPageDto, ChatRoomsQuery>((ref, query) {
      return ref
          .read(chatRepositoryProvider)
          .getChatRooms(page: query.page, size: query.size);
    });

final chatRoomListViewProvider =
    FutureProvider.family<List<ChatRoomListItemView>, ChatRoomsQuery>((
      ref,
      query,
    ) async {
      int? myUserId;
      try {
        myUserId = (await ref.read(profileRepositoryProvider).getMe()).id;
      } catch (_) {
        myUserId = null;
      }

      final page = await ref
          .read(chatRepositoryProvider)
          .getChatRooms(page: query.page, size: query.size);

      final views = await Future.wait(
        page.content.map((item) async {
          try {
            final detail = await ref
                .read(chatRepositoryProvider)
                .getChatRoomDetail(item.roomId);
            final match = await ref
                .read(matchRepositoryProvider)
                .getMatchDetail(item.matchId);
            return ChatRoomListItemView(
              item: item,
              matchStatus: detail.matchNotice.status,
              myRoleLabel: _myRoleLabel(
                match.hostId,
                myUserId,
                match.myParticipation?.status,
              ),
            );
          } catch (_) {
            return ChatRoomListItemView(item: item, matchStatus: 'UNKNOWN');
          }
        }),
      );

      return views;
    });

String? _myRoleLabel(int hostId, int? myUserId, String? participationStatus) {
  if (myUserId != null && hostId == myUserId) return '방장';
  return switch (participationStatus) {
    'ACCEPTED' => '참여확정',
    'WAITING' => '대기중',
    'RESERVED' => '참석제안',
    _ => null,
  };
}

final chatRoomDetailProvider = FutureProvider.family<ChatRoomDetailDto, int>((
  ref,
  roomId,
) {
  return ref.read(chatRepositoryProvider).getChatRoomDetail(roomId);
});

final matchChatRoomProvider = FutureProvider.family<ChatRoomDetailDto, int>((
  ref,
  matchId,
) {
  return ref.read(chatRepositoryProvider).getChatRoomByMatchId(matchId);
});

final unreadNotificationCountProvider = FutureProvider<int>((ref) {
  return ref.read(chatRepositoryProvider).getUnreadCount();
});

final notificationsProvider =
    FutureProvider.family<NotificationPageDto, NotificationsQuery>((
      ref,
      query,
    ) {
      return ref
          .read(chatRepositoryProvider)
          .getNotifications(page: query.page, size: query.size);
    });
