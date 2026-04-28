import 'package:freezed_annotation/freezed_annotation.dart';

part 'friendship_dto.freezed.dart';
part 'friendship_dto.g.dart';

@freezed
abstract class FollowingUserDto with _$FollowingUserDto {
  const factory FollowingUserDto({
    required int userId,
    String? nickname,
    String? profileImg,
    String? level,
    String? followedAt,
  }) = _FollowingUserDto;

  factory FollowingUserDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingUserDtoFromJson(json);
}

@freezed
abstract class FollowingUserEnvelope with _$FollowingUserEnvelope {
  const factory FollowingUserEnvelope({
    required bool success,
    FollowingUserDto? data,
    String? message,
    String? code,
  }) = _FollowingUserEnvelope;

  factory FollowingUserEnvelope.fromJson(Map<String, dynamic> json) =>
      _$FollowingUserEnvelopeFromJson(json);
}

@freezed
abstract class FollowingUsersEnvelope with _$FollowingUsersEnvelope {
  const factory FollowingUsersEnvelope({
    required bool success,
    @Default(<FollowingUserDto>[]) List<FollowingUserDto> data,
    String? message,
    String? code,
  }) = _FollowingUsersEnvelope;

  factory FollowingUsersEnvelope.fromJson(Map<String, dynamic> json) =>
      _$FollowingUsersEnvelopeFromJson(json);
}

@freezed
abstract class FollowRequestDto with _$FollowRequestDto {
  const factory FollowRequestDto({required int followingUserId}) =
      _FollowRequestDto;

  factory FollowRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestDtoFromJson(json);
}
