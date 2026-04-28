import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_penalty_dto.freezed.dart';
part 'user_penalty_dto.g.dart';

@freezed
abstract class UserPenaltyMatchDto with _$UserPenaltyMatchDto {
  const factory UserPenaltyMatchDto({
    required int matchId,
    required String title,
    required String matchDate,
    required String startTime,
  }) = _UserPenaltyMatchDto;

  factory UserPenaltyMatchDto.fromJson(Map<String, dynamic> json) =>
      _$UserPenaltyMatchDtoFromJson(json);
}

@freezed
abstract class UserPenaltyItemDto with _$UserPenaltyItemDto {
  const factory UserPenaltyItemDto({
    required int penaltyId,
    required String type,
    required UserPenaltyMatchDto match,
    required String createdAt,
    String? hostNickname,
  }) = _UserPenaltyItemDto;

  factory UserPenaltyItemDto.fromJson(Map<String, dynamic> json) =>
      _$UserPenaltyItemDtoFromJson(json);
}

@freezed
abstract class UserPenaltyPageDto with _$UserPenaltyPageDto {
  const factory UserPenaltyPageDto({
    @Default(<UserPenaltyItemDto>[]) List<UserPenaltyItemDto> items,
    @Default(0) int page,
    @Default(20) int pageSize,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(true) bool first,
    @Default(true) bool last,
  }) = _UserPenaltyPageDto;

  factory UserPenaltyPageDto.fromJson(Map<String, dynamic> json) =>
      _$UserPenaltyPageDtoFromJson(json);
}

@freezed
abstract class UserPenaltyPageEnvelope with _$UserPenaltyPageEnvelope {
  const factory UserPenaltyPageEnvelope({
    required bool success,
    UserPenaltyPageDto? data,
    String? message,
    String? code,
  }) = _UserPenaltyPageEnvelope;

  factory UserPenaltyPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$UserPenaltyPageEnvelopeFromJson(json);
}
