import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_login_dto.freezed.dart';
part 'oauth_login_dto.g.dart';

Object? _oauthLoginReadAccessToken(Map<dynamic, dynamic> json, String key) =>
    json['accessToken'] ?? json['access_token'];

@freezed
abstract class OAuthLoginRequestDto with _$OAuthLoginRequestDto {
  const factory OAuthLoginRequestDto({
    required String provider,
    @JsonKey(name: 'socialAccessToken') String? socialAccessToken,
    @JsonKey(name: 'authorizationCode') String? authorizationCode,
    @JsonKey(name: 'redirectUri') String? redirectUri,
  }) = _OAuthLoginRequestDto;

  factory OAuthLoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OAuthLoginRequestDtoFromJson(json);
}

@freezed
abstract class OAuthUserDto with _$OAuthUserDto {
  const factory OAuthUserDto({
    required int id,
    /// 카카오 등에서 동의 전·미제공 시 null일 수 있음.
    String? email,
    String? nickname,
    String? profileImg,
    @JsonKey(name: 'profileComplete') @Default(false) bool profileComplete,
    String? joinedAt,
  }) = _OAuthUserDto;

  factory OAuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$OAuthUserDtoFromJson(json);
}

@freezed
abstract class OAuthLoginDataDto with _$OAuthLoginDataDto {
  const factory OAuthLoginDataDto({
    @JsonKey(readValue: _oauthLoginReadAccessToken) required String accessToken,
    required OAuthUserDto user,
  }) = _OAuthLoginDataDto;

  factory OAuthLoginDataDto.fromJson(Map<String, dynamic> json) =>
      _$OAuthLoginDataDtoFromJson(json);
}

@freezed
abstract class OAuthLoginResponseEnvelope with _$OAuthLoginResponseEnvelope {
  const factory OAuthLoginResponseEnvelope({
    required bool success,
    OAuthLoginDataDto? data,
    String? message,
    String? code,
  }) = _OAuthLoginResponseEnvelope;

  factory OAuthLoginResponseEnvelope.fromJson(Map<String, dynamic> json) =>
      _$OAuthLoginResponseEnvelopeFromJson(json);
}
