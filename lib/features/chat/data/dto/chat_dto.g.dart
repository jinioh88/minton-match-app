// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomListItemDto _$ChatRoomListItemDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomListItemDto(
      matchId: (json['matchId'] as num).toInt(),
      roomId: (json['roomId'] as num).toInt(),
      matchTitle: json['matchTitle'] as String,
      lastMessagePreview: json['lastMessagePreview'] as String?,
      lastMessageAt: json['lastMessageAt'] as String?,
    );

Map<String, dynamic> _$ChatRoomListItemDtoToJson(
  _ChatRoomListItemDto instance,
) => <String, dynamic>{
  'matchId': instance.matchId,
  'roomId': instance.roomId,
  'matchTitle': instance.matchTitle,
  'lastMessagePreview': instance.lastMessagePreview,
  'lastMessageAt': instance.lastMessageAt,
};

_ChatRoomPageDto _$ChatRoomPageDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomPageDto(
      content:
          (json['content'] as List<dynamic>?)
              ?.map(
                (e) => ChatRoomListItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ChatRoomListItemDto>[],
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChatRoomPageDtoToJson(_ChatRoomPageDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
    };

_MatchChatNoticeDto _$MatchChatNoticeDtoFromJson(Map<String, dynamic> json) =>
    _MatchChatNoticeDto(
      matchId: (json['matchId'] as num).toInt(),
      title: json['title'] as String,
      matchDate: json['matchDate'] as String,
      startTime: json['startTime'] as String,
      durationMin: (json['durationMin'] as num?)?.toInt(),
      locationName: json['locationName'] as String?,
      costPolicy: json['costPolicy'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$MatchChatNoticeDtoToJson(_MatchChatNoticeDto instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'title': instance.title,
      'matchDate': instance.matchDate,
      'startTime': instance.startTime,
      'durationMin': instance.durationMin,
      'locationName': instance.locationName,
      'costPolicy': instance.costPolicy,
      'status': instance.status,
    };

_ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessageDto(
      messageId: (json['messageId'] as num).toInt(),
      roomId: (json['roomId'] as num).toInt(),
      senderId: (json['senderId'] as num).toInt(),
      senderNickname: json['senderNickname'] as String?,
      content: json['content'] as String?,
      messageType: json['messageType'] as String,
      createdAt: json['createdAt'] as String,
      editedAt: json['editedAt'] as String?,
    );

Map<String, dynamic> _$ChatMessageDtoToJson(_ChatMessageDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'senderNickname': instance.senderNickname,
      'content': instance.content,
      'messageType': instance.messageType,
      'createdAt': instance.createdAt,
      'editedAt': instance.editedAt,
    };

_ChatRoomDetailDto _$ChatRoomDetailDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomDetailDto(
      roomId: (json['roomId'] as num).toInt(),
      matchId: (json['matchId'] as num).toInt(),
      matchNotice: MatchChatNoticeDto.fromJson(
        json['matchNotice'] as Map<String, dynamic>,
      ),
      lastMessage: json['lastMessage'] == null
          ? null
          : ChatMessageDto.fromJson(
              json['lastMessage'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ChatRoomDetailDtoToJson(_ChatRoomDetailDto instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'matchId': instance.matchId,
      'matchNotice': instance.matchNotice,
      'lastMessage': instance.lastMessage,
    };

_ChatMessagePageDto _$ChatMessagePageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessagePageDto(
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatMessageDto>[],
      nextCursor: (json['nextCursor'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChatMessagePageDtoToJson(_ChatMessagePageDto instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'nextCursor': instance.nextCursor,
    };

_ChatMessageSendRequestDto _$ChatMessageSendRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ChatMessageSendRequestDto(
  content: json['content'] as String,
  messageType: json['messageType'] as String? ?? 'TEXT',
);

Map<String, dynamic> _$ChatMessageSendRequestDtoToJson(
  _ChatMessageSendRequestDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'messageType': instance.messageType,
};

_ChatMessagePatchRequestDto _$ChatMessagePatchRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ChatMessagePatchRequestDto(content: json['content'] as String);

Map<String, dynamic> _$ChatMessagePatchRequestDtoToJson(
  _ChatMessagePatchRequestDto instance,
) => <String, dynamic>{'content': instance.content};

_ChatRoomPageEnvelope _$ChatRoomPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _ChatRoomPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ChatRoomPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ChatRoomPageEnvelopeToJson(
  _ChatRoomPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_ChatRoomDetailEnvelope _$ChatRoomDetailEnvelopeFromJson(
  Map<String, dynamic> json,
) => _ChatRoomDetailEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ChatRoomDetailDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ChatRoomDetailEnvelopeToJson(
  _ChatRoomDetailEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_ChatMessagePageEnvelope _$ChatMessagePageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _ChatMessagePageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ChatMessagePageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ChatMessagePageEnvelopeToJson(
  _ChatMessagePageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_ChatMessageEnvelope _$ChatMessageEnvelopeFromJson(Map<String, dynamic> json) =>
    _ChatMessageEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : ChatMessageDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ChatMessageEnvelopeToJson(
  _ChatMessageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_EmptyEnvelope _$EmptyEnvelopeFromJson(Map<String, dynamic> json) =>
    _EmptyEnvelope(
      success: json['success'] as bool,
      data: json['data'],
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$EmptyEnvelopeToJson(_EmptyEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };
