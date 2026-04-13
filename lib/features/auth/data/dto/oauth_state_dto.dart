import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_state_dto.freezed.dart';
part 'oauth_state_dto.g.dart';

@freezed
abstract class OAuthStateDataDto with _$OAuthStateDataDto {
  const factory OAuthStateDataDto({
    required String state,
  }) = _OAuthStateDataDto;

  factory OAuthStateDataDto.fromJson(Map<String, dynamic> json) =>
      _$OAuthStateDataDtoFromJson(json);
}

@freezed
abstract class OAuthStateResponseEnvelope with _$OAuthStateResponseEnvelope {
  const factory OAuthStateResponseEnvelope({
    required bool success,
    OAuthStateDataDto? data,
    String? message,
    String? code,
  }) = _OAuthStateResponseEnvelope;

  factory OAuthStateResponseEnvelope.fromJson(Map<String, dynamic> json) =>
      _$OAuthStateResponseEnvelopeFromJson(json);
}
