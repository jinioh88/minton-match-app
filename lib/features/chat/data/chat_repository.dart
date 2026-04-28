import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/dio_provider.dart';
import 'chat_api_service.dart';
import 'dto/chat_dto.dart';
import 'dto/notification_dto.dart';

final chatApiServiceProvider = Provider<ChatApiService>((ref) {
  return ChatApiService(ref.watch(dioProvider));
});

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  return ChatRepository(ref.watch(chatApiServiceProvider));
});

class ChatRepository {
  ChatRepository(this._api);

  final ChatApiService _api;

  Future<ChatRoomPageDto> getChatRooms({int page = 0, int size = 20}) async {
    final res = await _api.getChatRooms(page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '채팅방 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<ChatRoomDetailDto> getChatRoomDetail(int roomId) async {
    final res = await _api.getChatRoomDetail(roomId);
    return _requireRoomDetail(res, fallbackMessage: '채팅방 정보를 불러오지 못했습니다.');
  }

  Future<ChatRoomDetailDto> getChatRoomByMatchId(int matchId) async {
    final res = await _api.getChatRoomByMatchId(matchId);
    return _requireRoomDetail(res, fallbackMessage: '매칭 채팅방을 찾지 못했습니다.');
  }

  Future<ChatMessagePageDto> getMessages(
    int roomId, {
    int? cursor,
    int? afterId,
    int size = 30,
  }) async {
    final res = await _api.getMessages(
      roomId,
      cursor: cursor,
      afterId: afterId,
      size: size,
    );
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '메시지를 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<ChatMessageDto> sendMessage(
    int roomId,
    ChatMessageSendRequestDto request,
  ) async {
    final res = await _api.sendMessage(roomId, request.toJson());
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '메시지 전송에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<NotificationPageDto> getNotifications({
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getNotifications(page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '알림 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<int> getUnreadCount() async {
    final res = await _api.getUnreadCount();
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '미읽음 알림 수를 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<void> readNotification(int notificationId) async {
    final res = await _api.readNotification(notificationId);
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '알림 읽음 처리에 실패했습니다.',
        businessCode: res.code,
      );
    }
  }

  Future<int> readAllNotifications() async {
    final res = await _api.readAllNotifications();
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '전체 읽음 처리에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<void> registerPushToken(PushTokenRegisterRequestDto request) async {
    final res = await _api.registerPushToken(request.toJson());
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '푸시 토큰 등록에 실패했습니다.',
        businessCode: res.code,
      );
    }
  }

  Future<void> revokePushToken(PushTokenRevokeRequestDto request) async {
    final res = await _api.revokePushToken(request.toJson());
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '푸시 토큰 해지에 실패했습니다.',
        businessCode: res.code,
      );
    }
  }

  ChatRoomDetailDto _requireRoomDetail(
    ChatRoomDetailEnvelope res, {
    required String fallbackMessage,
  }) {
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? fallbackMessage,
        businessCode: res.code,
      );
    }
    return data;
  }
}
