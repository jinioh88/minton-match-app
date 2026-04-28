// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationItemDto _$NotificationItemDtoFromJson(Map<String, dynamic> json) =>
    _NotificationItemDto(
      notificationId: (json['notificationId'] as num).toInt(),
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String?,
      payload: json['payload'] as String?,
      relatedMatchId: (json['relatedMatchId'] as num?)?.toInt(),
      relatedParticipantId: (json['relatedParticipantId'] as num?)?.toInt(),
      readAt: json['readAt'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$NotificationItemDtoToJson(
  _NotificationItemDto instance,
) => <String, dynamic>{
  'notificationId': instance.notificationId,
  'type': instance.type,
  'title': instance.title,
  'body': instance.body,
  'payload': instance.payload,
  'relatedMatchId': instance.relatedMatchId,
  'relatedParticipantId': instance.relatedParticipantId,
  'readAt': instance.readAt,
  'createdAt': instance.createdAt,
};

_NotificationPageDto _$NotificationPageDtoFromJson(Map<String, dynamic> json) =>
    _NotificationPageDto(
      content:
          (json['content'] as List<dynamic>?)
              ?.map(
                (e) => NotificationItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <NotificationItemDto>[],
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotificationPageDtoToJson(
  _NotificationPageDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
  'size': instance.size,
  'number': instance.number,
};

_NotificationPageEnvelope _$NotificationPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _NotificationPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : NotificationPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$NotificationPageEnvelopeToJson(
  _NotificationPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_UnreadCountEnvelope _$UnreadCountEnvelopeFromJson(Map<String, dynamic> json) =>
    _UnreadCountEnvelope(
      success: json['success'] as bool,
      data: (json['data'] as num?)?.toInt(),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$UnreadCountEnvelopeToJson(
  _UnreadCountEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_ReadAllEnvelope _$ReadAllEnvelopeFromJson(Map<String, dynamic> json) =>
    _ReadAllEnvelope(
      success: json['success'] as bool,
      data: (json['data'] as num?)?.toInt(),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ReadAllEnvelopeToJson(_ReadAllEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

_NotificationRealtimePayload _$NotificationRealtimePayloadFromJson(
  Map<String, dynamic> json,
) => _NotificationRealtimePayload(
  notificationId: (json['notificationId'] as num).toInt(),
  recipientUserId: (json['recipientUserId'] as num).toInt(),
  type: json['type'] as String,
  title: json['title'] as String,
  summary: json['summary'] as String,
  relatedMatchId: (json['relatedMatchId'] as num?)?.toInt(),
  relatedParticipantId: (json['relatedParticipantId'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotificationRealtimePayloadToJson(
  _NotificationRealtimePayload instance,
) => <String, dynamic>{
  'notificationId': instance.notificationId,
  'recipientUserId': instance.recipientUserId,
  'type': instance.type,
  'title': instance.title,
  'summary': instance.summary,
  'relatedMatchId': instance.relatedMatchId,
  'relatedParticipantId': instance.relatedParticipantId,
};

_PushTokenRegisterRequestDto _$PushTokenRegisterRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PushTokenRegisterRequestDto(
  fcmToken: json['fcmToken'] as String,
  platform: json['platform'] as String,
);

Map<String, dynamic> _$PushTokenRegisterRequestDtoToJson(
  _PushTokenRegisterRequestDto instance,
) => <String, dynamic>{
  'fcmToken': instance.fcmToken,
  'platform': instance.platform,
};

_PushTokenRevokeRequestDto _$PushTokenRevokeRequestDtoFromJson(
  Map<String, dynamic> json,
) => _PushTokenRevokeRequestDto(token: json['token'] as String);

Map<String, dynamic> _$PushTokenRevokeRequestDtoToJson(
  _PushTokenRevokeRequestDto instance,
) => <String, dynamic>{'token': instance.token};
