import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_review_dto.freezed.dart';
part 'user_review_dto.g.dart';

@freezed
abstract class UserReviewMatchDto with _$UserReviewMatchDto {
  const factory UserReviewMatchDto({
    required int matchId,
    required String title,
    required String matchDate,
    required String startTime,
  }) = _UserReviewMatchDto;

  factory UserReviewMatchDto.fromJson(Map<String, dynamic> json) =>
      _$UserReviewMatchDtoFromJson(json);
}

@freezed
abstract class UserReviewReviewerDto with _$UserReviewReviewerDto {
  const factory UserReviewReviewerDto({
    required int userId,
    required String nickname,
    String? profileImg,
  }) = _UserReviewReviewerDto;

  factory UserReviewReviewerDto.fromJson(Map<String, dynamic> json) =>
      _$UserReviewReviewerDtoFromJson(json);
}

@freezed
abstract class UserReviewItemDto with _$UserReviewItemDto {
  const factory UserReviewItemDto({
    required int reviewId,
    required UserReviewMatchDto match,
    UserReviewReviewerDto? reviewer,
    String? sentiment,
    int? score,
    @Default(<String>[]) List<String> hashtags,
    String? detail,
    required String createdAt,
    @Default(false) bool contentRevealed,
    @Default(true) bool reviewSubmitted,
  }) = _UserReviewItemDto;

  factory UserReviewItemDto.fromJson(Map<String, dynamic> json) =>
      _$UserReviewItemDtoFromJson(json);
}

@freezed
abstract class UserReviewPageDto with _$UserReviewPageDto {
  const factory UserReviewPageDto({
    @Default(<UserReviewItemDto>[]) List<UserReviewItemDto> items,
    @Default(0) int page,
    @Default(20) int pageSize,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(true) bool first,
    @Default(true) bool last,
  }) = _UserReviewPageDto;

  factory UserReviewPageDto.fromJson(Map<String, dynamic> json) =>
      _$UserReviewPageDtoFromJson(json);
}

@freezed
abstract class UserReviewPageEnvelope with _$UserReviewPageEnvelope {
  const factory UserReviewPageEnvelope({
    required bool success,
    UserReviewPageDto? data,
    String? message,
    String? code,
  }) = _UserReviewPageEnvelope;

  factory UserReviewPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$UserReviewPageEnvelopeFromJson(json);
}
