import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

@freezed
abstract class ChatRoomListItemDto with _$ChatRoomListItemDto {
  const factory ChatRoomListItemDto({
    required int matchId,
    required int roomId,
    required String matchTitle,
    String? lastMessagePreview,
    String? lastMessageAt,
  }) = _ChatRoomListItemDto;

  factory ChatRoomListItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomListItemDtoFromJson(json);
}

@freezed
abstract class ChatRoomPageDto with _$ChatRoomPageDto {
  const factory ChatRoomPageDto({
    @Default(<ChatRoomListItemDto>[]) List<ChatRoomListItemDto> content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
  }) = _ChatRoomPageDto;

  factory ChatRoomPageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomPageDtoFromJson(json);
}

@freezed
abstract class MatchChatNoticeDto with _$MatchChatNoticeDto {
  const factory MatchChatNoticeDto({
    required int matchId,
    required String title,
    required String matchDate,
    required String startTime,
    int? durationMin,
    String? locationName,
    required String costPolicy,
    required String status,
  }) = _MatchChatNoticeDto;

  factory MatchChatNoticeDto.fromJson(Map<String, dynamic> json) =>
      _$MatchChatNoticeDtoFromJson(json);
}

@freezed
abstract class ChatMessageDto with _$ChatMessageDto {
  const factory ChatMessageDto({
    required int messageId,
    required int roomId,
    required int senderId,
    String? senderNickname,
    String? content,
    required String messageType,
    required String createdAt,
    String? editedAt,
  }) = _ChatMessageDto;

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);
}

@freezed
abstract class ChatRoomDetailDto with _$ChatRoomDetailDto {
  const factory ChatRoomDetailDto({
    required int roomId,
    required int matchId,
    required MatchChatNoticeDto matchNotice,
    ChatMessageDto? lastMessage,
  }) = _ChatRoomDetailDto;

  factory ChatRoomDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomDetailDtoFromJson(json);
}

@freezed
abstract class ChatMessagePageDto with _$ChatMessagePageDto {
  const factory ChatMessagePageDto({
    @Default(<ChatMessageDto>[]) List<ChatMessageDto> messages,
    int? nextCursor,
  }) = _ChatMessagePageDto;

  factory ChatMessagePageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagePageDtoFromJson(json);
}

@freezed
abstract class ChatMessageSendRequestDto with _$ChatMessageSendRequestDto {
  const factory ChatMessageSendRequestDto({
    required String content,
    @Default('TEXT') String messageType,
  }) = _ChatMessageSendRequestDto;

  factory ChatMessageSendRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageSendRequestDtoFromJson(json);
}

@freezed
abstract class ChatMessagePatchRequestDto with _$ChatMessagePatchRequestDto {
  const factory ChatMessagePatchRequestDto({required String content}) =
      _ChatMessagePatchRequestDto;

  factory ChatMessagePatchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagePatchRequestDtoFromJson(json);
}

@freezed
abstract class ChatRoomPageEnvelope with _$ChatRoomPageEnvelope {
  const factory ChatRoomPageEnvelope({
    required bool success,
    ChatRoomPageDto? data,
    String? message,
    String? code,
  }) = _ChatRoomPageEnvelope;

  factory ChatRoomPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomPageEnvelopeFromJson(json);
}

@freezed
abstract class ChatRoomDetailEnvelope with _$ChatRoomDetailEnvelope {
  const factory ChatRoomDetailEnvelope({
    required bool success,
    ChatRoomDetailDto? data,
    String? message,
    String? code,
  }) = _ChatRoomDetailEnvelope;

  factory ChatRoomDetailEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomDetailEnvelopeFromJson(json);
}

@freezed
abstract class ChatMessagePageEnvelope with _$ChatMessagePageEnvelope {
  const factory ChatMessagePageEnvelope({
    required bool success,
    ChatMessagePageDto? data,
    String? message,
    String? code,
  }) = _ChatMessagePageEnvelope;

  factory ChatMessagePageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagePageEnvelopeFromJson(json);
}

@freezed
abstract class ChatMessageEnvelope with _$ChatMessageEnvelope {
  const factory ChatMessageEnvelope({
    required bool success,
    ChatMessageDto? data,
    String? message,
    String? code,
  }) = _ChatMessageEnvelope;

  factory ChatMessageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageEnvelopeFromJson(json);
}

@freezed
abstract class EmptyEnvelope with _$EmptyEnvelope {
  const factory EmptyEnvelope({
    required bool success,
    Object? data,
    String? message,
    String? code,
  }) = _EmptyEnvelope;

  factory EmptyEnvelope.fromJson(Map<String, dynamic> json) =>
      _$EmptyEnvelopeFromJson(json);
}
