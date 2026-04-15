// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateMatchRequestDto _$CreateMatchRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateMatchRequestDto(
  title: json['title'] as String,
  description: json['description'] as String,
  matchDate: json['matchDate'] as String,
  startTime: json['startTime'] as String,
  durationMin: (json['durationMin'] as num).toInt(),
  locationName: json['locationName'] as String?,
  regionCode: json['regionCode'] as String,
  maxPeople: (json['maxPeople'] as num).toInt(),
  targetLevels: json['targetLevels'] as String?,
  costPolicy: $enumDecode(_$CostPolicyEnumMap, json['costPolicy']),
  imageUrl: json['imageUrl'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CreateMatchRequestDtoToJson(
  _CreateMatchRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'matchDate': instance.matchDate,
  'startTime': instance.startTime,
  'durationMin': instance.durationMin,
  'locationName': instance.locationName,
  'regionCode': instance.regionCode,
  'maxPeople': instance.maxPeople,
  'targetLevels': instance.targetLevels,
  'costPolicy': _$CostPolicyEnumMap[instance.costPolicy]!,
  'imageUrl': instance.imageUrl,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

const _$CostPolicyEnumMap = {
  CostPolicy.splitEqual: 'SPLIT_EQUAL',
  CostPolicy.hostPays: 'HOST_PAYS',
  CostPolicy.guestPays: 'GUEST_PAYS',
};

_CreateMatchResponseDto _$CreateMatchResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CreateMatchResponseDto(
  matchId: (json['matchId'] as num).toInt(),
  hostId: (json['hostId'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  matchDate: json['matchDate'] as String,
  startTime: json['startTime'] as String,
  durationMin: (json['durationMin'] as num).toInt(),
  locationName: json['locationName'] as String?,
  regionCode: json['regionCode'] as String,
  maxPeople: (json['maxPeople'] as num).toInt(),
  targetLevels: json['targetLevels'] as String?,
  costPolicy: $enumDecode(_$CostPolicyEnumMap, json['costPolicy']),
  status: json['status'] as String,
  imageUrl: json['imageUrl'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$CreateMatchResponseDtoToJson(
  _CreateMatchResponseDto instance,
) => <String, dynamic>{
  'matchId': instance.matchId,
  'hostId': instance.hostId,
  'title': instance.title,
  'description': instance.description,
  'matchDate': instance.matchDate,
  'startTime': instance.startTime,
  'durationMin': instance.durationMin,
  'locationName': instance.locationName,
  'regionCode': instance.regionCode,
  'maxPeople': instance.maxPeople,
  'targetLevels': instance.targetLevels,
  'costPolicy': _$CostPolicyEnumMap[instance.costPolicy]!,
  'status': instance.status,
  'imageUrl': instance.imageUrl,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'createdAt': instance.createdAt,
};

_CreateMatchEnvelope _$CreateMatchEnvelopeFromJson(Map<String, dynamic> json) =>
    _CreateMatchEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : CreateMatchResponseDto.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$CreateMatchEnvelopeToJson(
  _CreateMatchEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_FileUploadResultDto _$FileUploadResultDtoFromJson(Map<String, dynamic> json) =>
    _FileUploadResultDto(
      url: json['url'] as String,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$FileUploadResultDtoToJson(
  _FileUploadResultDto instance,
) => <String, dynamic>{'url': instance.url, 'key': instance.key};

_FileUploadEnvelope _$FileUploadEnvelopeFromJson(Map<String, dynamic> json) =>
    _FileUploadEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : FileUploadResultDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$FileUploadEnvelopeToJson(_FileUploadEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };
