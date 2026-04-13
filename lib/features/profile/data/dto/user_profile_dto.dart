import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/user_level.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
abstract class UserProfileDto with _$UserProfileDto {
  const factory UserProfileDto({
    required int id,
    required String nickname,
    String? profileImg,
    String? level,
    @JsonKey(name: 'interestLoc1') String? interestLoc1,
    @JsonKey(name: 'interestLoc2') String? interestLoc2,
    @JsonKey(name: 'racketInfo') String? racketInfo,
    @JsonKey(name: 'playStyle') String? playStyle,
    @JsonKey(name: 'ratingScore') double? ratingScore,
    @JsonKey(name: 'penaltyCount') int? penaltyCount,
    @JsonKey(name: 'hostedMatchCount') int? hostedMatchCount,
    @JsonKey(name: 'participatedMatchCount') int? participatedMatchCount,
  }) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);
}

extension UserProfileDtoLevel on UserProfileDto {
  UserLevel? get levelEnum => parseUserLevel(level);
}

@freezed
abstract class UserProfileEnvelope with _$UserProfileEnvelope {
  const factory UserProfileEnvelope({
    required bool success,
    UserProfileDto? data,
    String? message,
    String? code,
  }) = _UserProfileEnvelope;

  factory UserProfileEnvelope.fromJson(Map<String, dynamic> json) =>
      _$UserProfileEnvelopeFromJson(json);
}

@freezed
abstract class NicknameAvailabilityDto with _$NicknameAvailabilityDto {
  const factory NicknameAvailabilityDto({
    required bool available,
  }) = _NicknameAvailabilityDto;

  factory NicknameAvailabilityDto.fromJson(Map<String, dynamic> json) =>
      _$NicknameAvailabilityDtoFromJson(json);
}

@freezed
abstract class NicknameCheckEnvelope with _$NicknameCheckEnvelope {
  const factory NicknameCheckEnvelope({
    required bool success,
    NicknameAvailabilityDto? data,
    String? message,
    String? code,
  }) = _NicknameCheckEnvelope;

  factory NicknameCheckEnvelope.fromJson(Map<String, dynamic> json) =>
      _$NicknameCheckEnvelopeFromJson(json);
}
