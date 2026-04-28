// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penalty_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePenaltyRequestDto _$CreatePenaltyRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreatePenaltyRequestDto(
  userId: (json['userId'] as num).toInt(),
  type: json['type'] as String,
);

Map<String, dynamic> _$CreatePenaltyRequestDtoToJson(
  _CreatePenaltyRequestDto instance,
) => <String, dynamic>{'userId': instance.userId, 'type': instance.type};

_CreatedPenaltyDto _$CreatedPenaltyDtoFromJson(Map<String, dynamic> json) =>
    _CreatedPenaltyDto(
      penaltyId: (json['penaltyId'] as num).toInt(),
      matchId: (json['matchId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      type: json['type'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$CreatedPenaltyDtoToJson(_CreatedPenaltyDto instance) =>
    <String, dynamic>{
      'penaltyId': instance.penaltyId,
      'matchId': instance.matchId,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt,
    };

_CreatePenaltyEnvelope _$CreatePenaltyEnvelopeFromJson(
  Map<String, dynamic> json,
) => _CreatePenaltyEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : CreatedPenaltyDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$CreatePenaltyEnvelopeToJson(
  _CreatePenaltyEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
