// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowingUserDto _$FollowingUserDtoFromJson(Map<String, dynamic> json) =>
    _FollowingUserDto(
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String?,
      profileImg: json['profileImg'] as String?,
      level: json['level'] as String?,
      followedAt: json['followedAt'] as String?,
    );

Map<String, dynamic> _$FollowingUserDtoToJson(_FollowingUserDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'profileImg': instance.profileImg,
      'level': instance.level,
      'followedAt': instance.followedAt,
    };

_FollowingUserEnvelope _$FollowingUserEnvelopeFromJson(
  Map<String, dynamic> json,
) => _FollowingUserEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : FollowingUserDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$FollowingUserEnvelopeToJson(
  _FollowingUserEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_FollowingUsersEnvelope _$FollowingUsersEnvelopeFromJson(
  Map<String, dynamic> json,
) => _FollowingUsersEnvelope(
  success: json['success'] as bool,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => FollowingUserDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FollowingUserDto>[],
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$FollowingUsersEnvelopeToJson(
  _FollowingUsersEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_FollowRequestDto _$FollowRequestDtoFromJson(Map<String, dynamic> json) =>
    _FollowRequestDto(
      followingUserId: (json['followingUserId'] as num).toInt(),
    );

Map<String, dynamic> _$FollowRequestDtoToJson(_FollowRequestDto instance) =>
    <String, dynamic>{'followingUserId': instance.followingUserId};
