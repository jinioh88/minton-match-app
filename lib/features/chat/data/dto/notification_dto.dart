import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
abstract class NotificationItemDto with _$NotificationItemDto {
  const factory NotificationItemDto({
    required int notificationId,
    required String type,
    required String title,
    String? body,
    String? payload,
    int? relatedMatchId,
    int? relatedParticipantId,
    String? readAt,
    required String createdAt,
  }) = _NotificationItemDto;

  factory NotificationItemDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemDtoFromJson(json);
}

@freezed
abstract class NotificationPageDto with _$NotificationPageDto {
  const factory NotificationPageDto({
    @Default(<NotificationItemDto>[]) List<NotificationItemDto> content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
  }) = _NotificationPageDto;

  factory NotificationPageDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPageDtoFromJson(json);
}

@freezed
abstract class NotificationPageEnvelope with _$NotificationPageEnvelope {
  const factory NotificationPageEnvelope({
    required bool success,
    NotificationPageDto? data,
    String? message,
    String? code,
  }) = _NotificationPageEnvelope;

  factory NotificationPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$NotificationPageEnvelopeFromJson(json);
}

@freezed
abstract class UnreadCountEnvelope with _$UnreadCountEnvelope {
  const factory UnreadCountEnvelope({
    required bool success,
    int? data,
    String? message,
    String? code,
  }) = _UnreadCountEnvelope;

  factory UnreadCountEnvelope.fromJson(Map<String, dynamic> json) =>
      _$UnreadCountEnvelopeFromJson(json);
}

@freezed
abstract class ReadAllEnvelope with _$ReadAllEnvelope {
  const factory ReadAllEnvelope({
    required bool success,
    int? data,
    String? message,
    String? code,
  }) = _ReadAllEnvelope;

  factory ReadAllEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ReadAllEnvelopeFromJson(json);
}

@freezed
abstract class NotificationRealtimePayload with _$NotificationRealtimePayload {
  const factory NotificationRealtimePayload({
    required int notificationId,
    required int recipientUserId,
    required String type,
    required String title,
    required String summary,
    int? relatedMatchId,
    int? relatedParticipantId,
  }) = _NotificationRealtimePayload;

  factory NotificationRealtimePayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationRealtimePayloadFromJson(json);
}

@freezed
abstract class PushTokenRegisterRequestDto with _$PushTokenRegisterRequestDto {
  const factory PushTokenRegisterRequestDto({
    required String fcmToken,
    required String platform,
  }) = _PushTokenRegisterRequestDto;

  factory PushTokenRegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PushTokenRegisterRequestDtoFromJson(json);
}

@freezed
abstract class PushTokenRevokeRequestDto with _$PushTokenRevokeRequestDto {
  const factory PushTokenRevokeRequestDto({required String token}) =
      _PushTokenRevokeRequestDto;

  factory PushTokenRevokeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PushTokenRevokeRequestDtoFromJson(json);
}
