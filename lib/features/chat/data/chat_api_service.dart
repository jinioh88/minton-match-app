import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/chat_dto.dart';
import 'dto/notification_dto.dart';

part 'chat_api_service.g.dart';

@RestApi()
abstract class ChatApiService {
  factory ChatApiService(Dio dio, {String baseUrl}) = _ChatApiService;

  @GET('/api/chat/rooms')
  Future<ChatRoomPageEnvelope> getChatRooms({
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/chat/rooms/{roomId}')
  Future<ChatRoomDetailEnvelope> getChatRoomDetail(@Path('roomId') int roomId);

  @GET('/api/matches/{matchId}/chat')
  Future<ChatRoomDetailEnvelope> getChatRoomByMatchId(
    @Path('matchId') int matchId,
  );

  @GET('/api/chat/rooms/{roomId}/messages')
  Future<ChatMessagePageEnvelope> getMessages(
    @Path('roomId') int roomId, {
    @Query('cursor') int? cursor,
    @Query('afterId') int? afterId,
    @Query('size') int? size,
  });

  @POST('/api/chat/rooms/{roomId}/messages')
  Future<ChatMessageEnvelope> sendMessage(
    @Path('roomId') int roomId,
    @Body() Map<String, dynamic> body,
  );

  @PATCH('/api/chat/rooms/{roomId}/messages/{messageId}')
  Future<ChatMessageEnvelope> patchMessage(
    @Path('roomId') int roomId,
    @Path('messageId') int messageId,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/api/chat/rooms/{roomId}/messages/{messageId}')
  Future<EmptyEnvelope> deleteMessage(
    @Path('roomId') int roomId,
    @Path('messageId') int messageId,
  );

  @GET('/api/notifications')
  Future<NotificationPageEnvelope> getNotifications({
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/notifications/unread-count')
  Future<UnreadCountEnvelope> getUnreadCount();

  @PATCH('/api/notifications/{notificationId}/read')
  Future<EmptyEnvelope> readNotification(
    @Path('notificationId') int notificationId,
  );

  @POST('/api/notifications/read-all')
  Future<ReadAllEnvelope> readAllNotifications();

  @POST('/api/notifications/push-tokens')
  Future<EmptyEnvelope> registerPushToken(@Body() Map<String, dynamic> body);

  @POST('/api/notifications/push-tokens/revoke')
  Future<EmptyEnvelope> revokePushToken(@Body() Map<String, dynamic> body);
}
