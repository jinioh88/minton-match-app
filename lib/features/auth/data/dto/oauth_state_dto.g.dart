// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_state_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OAuthStateDataDto _$OAuthStateDataDtoFromJson(Map<String, dynamic> json) =>
    _OAuthStateDataDto(state: json['state'] as String);

Map<String, dynamic> _$OAuthStateDataDtoToJson(_OAuthStateDataDto instance) =>
    <String, dynamic>{'state': instance.state};

_OAuthStateResponseEnvelope _$OAuthStateResponseEnvelopeFromJson(
  Map<String, dynamic> json,
) => _OAuthStateResponseEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : OAuthStateDataDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$OAuthStateResponseEnvelopeToJson(
  _OAuthStateResponseEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
