// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OAuthLoginRequestDto _$OAuthLoginRequestDtoFromJson(
  Map<String, dynamic> json,
) => _OAuthLoginRequestDto(
  provider: json['provider'] as String,
  socialAccessToken: json['socialAccessToken'] as String?,
  authorizationCode: json['authorizationCode'] as String?,
  redirectUri: json['redirectUri'] as String?,
);

Map<String, dynamic> _$OAuthLoginRequestDtoToJson(
  _OAuthLoginRequestDto instance,
) => <String, dynamic>{
  'provider': instance.provider,
  'socialAccessToken': instance.socialAccessToken,
  'authorizationCode': instance.authorizationCode,
  'redirectUri': instance.redirectUri,
};

_OAuthUserDto _$OAuthUserDtoFromJson(Map<String, dynamic> json) =>
    _OAuthUserDto(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      profileImg: json['profileImg'] as String?,
      profileComplete: json['profileComplete'] as bool? ?? false,
      joinedAt: json['joinedAt'] as String?,
    );

Map<String, dynamic> _$OAuthUserDtoToJson(_OAuthUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'profileImg': instance.profileImg,
      'profileComplete': instance.profileComplete,
      'joinedAt': instance.joinedAt,
    };

_OAuthLoginDataDto _$OAuthLoginDataDtoFromJson(Map<String, dynamic> json) =>
    _OAuthLoginDataDto(
      accessToken: _oauthLoginReadAccessToken(json, 'accessToken') as String,
      user: OAuthUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OAuthLoginDataDtoToJson(_OAuthLoginDataDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
    };

_OAuthLoginResponseEnvelope _$OAuthLoginResponseEnvelopeFromJson(
  Map<String, dynamic> json,
) => _OAuthLoginResponseEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : OAuthLoginDataDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$OAuthLoginResponseEnvelopeToJson(
  _OAuthLoginResponseEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
