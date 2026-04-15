// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _UserProfileDto(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImg: json['profileImg'] as String?,
      level: json['level'] as String?,
      interestLoc1: json['interestLoc1'] as String?,
      interestLoc2: json['interestLoc2'] as String?,
      racketInfo: json['racketInfo'] as String?,
      playStyle: json['playStyle'] as String?,
      ratingScore: (json['ratingScore'] as num?)?.toDouble(),
      penaltyCount: (json['penaltyCount'] as num?)?.toInt(),
      hostedMatchCount: (json['hostedMatchCount'] as num?)?.toInt(),
      participatedMatchCount: (json['participatedMatchCount'] as num?)?.toInt(),
      joinedAt: _readJoinedAt(json, 'joinedAt') as String?,
      mannerTags: _tagsFromJson(_readMannerTags(json, 'mannerTags')),
    );

Map<String, dynamic> _$UserProfileDtoToJson(_UserProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profileImg': instance.profileImg,
      'level': instance.level,
      'interestLoc1': instance.interestLoc1,
      'interestLoc2': instance.interestLoc2,
      'racketInfo': instance.racketInfo,
      'playStyle': instance.playStyle,
      'ratingScore': instance.ratingScore,
      'penaltyCount': instance.penaltyCount,
      'hostedMatchCount': instance.hostedMatchCount,
      'participatedMatchCount': instance.participatedMatchCount,
      'joinedAt': instance.joinedAt,
      'mannerTags': instance.mannerTags,
    };

_UserProfileEnvelope _$UserProfileEnvelopeFromJson(Map<String, dynamic> json) =>
    _UserProfileEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : UserProfileDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$UserProfileEnvelopeToJson(
  _UserProfileEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_NicknameAvailabilityDto _$NicknameAvailabilityDtoFromJson(
  Map<String, dynamic> json,
) => _NicknameAvailabilityDto(available: json['available'] as bool);

Map<String, dynamic> _$NicknameAvailabilityDtoToJson(
  _NicknameAvailabilityDto instance,
) => <String, dynamic>{'available': instance.available};

_NicknameCheckEnvelope _$NicknameCheckEnvelopeFromJson(
  Map<String, dynamic> json,
) => _NicknameCheckEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : NicknameAvailabilityDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$NicknameCheckEnvelopeToJson(
  _NicknameCheckEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
