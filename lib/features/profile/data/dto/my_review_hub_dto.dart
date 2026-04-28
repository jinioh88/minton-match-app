import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_review_hub_dto.freezed.dart';
part 'my_review_hub_dto.g.dart';

@freezed
abstract class MatchReviewSummaryDto with _$MatchReviewSummaryDto {
  const factory MatchReviewSummaryDto({
    required int matchId,
    required String title,
    required String matchDate,
    required String startTime,
  }) = _MatchReviewSummaryDto;

  factory MatchReviewSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$MatchReviewSummaryDtoFromJson(json);
}

@freezed
abstract class ReviewerPublicSummaryDto with _$ReviewerPublicSummaryDto {
  const factory ReviewerPublicSummaryDto({
    required int userId,
    required String nickname,
    String? profileImg,
  }) = _ReviewerPublicSummaryDto;

  factory ReviewerPublicSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewerPublicSummaryDtoFromJson(json);
}

@freezed
abstract class WrittenReviewListItemDto with _$WrittenReviewListItemDto {
  const factory WrittenReviewListItemDto({
    required int reviewId,
    required MatchReviewSummaryDto match,
    required ReviewerPublicSummaryDto reviewee,
    String? sentiment,
    int? score,
    @Default(<String>[]) List<String> hashtags,
    String? detail,
    required String createdAt,
  }) = _WrittenReviewListItemDto;

  factory WrittenReviewListItemDto.fromJson(Map<String, dynamic> json) =>
      _$WrittenReviewListItemDtoFromJson(json);
}

@freezed
abstract class PendingReviewItemDto with _$PendingReviewItemDto {
  const factory PendingReviewItemDto({
    required int matchId,
    required MatchReviewSummaryDto match,
    required int revieweeId,
    required ReviewerPublicSummaryDto reviewee,
  }) = _PendingReviewItemDto;

  factory PendingReviewItemDto.fromJson(Map<String, dynamic> json) =>
      _$PendingReviewItemDtoFromJson(json);
}

@freezed
abstract class MyWrittenReviewPageDto with _$MyWrittenReviewPageDto {
  const factory MyWrittenReviewPageDto({
    @Default(<WrittenReviewListItemDto>[]) List<WrittenReviewListItemDto> items,
    @Default(0) int page,
    @Default(20) int pageSize,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(true) bool first,
    @Default(true) bool last,
  }) = _MyWrittenReviewPageDto;

  factory MyWrittenReviewPageDto.fromJson(Map<String, dynamic> json) =>
      _$MyWrittenReviewPageDtoFromJson(json);
}

@freezed
abstract class MyPendingReviewPageDto with _$MyPendingReviewPageDto {
  const factory MyPendingReviewPageDto({
    @Default(<PendingReviewItemDto>[]) List<PendingReviewItemDto> items,
    @Default(0) int page,
    @Default(20) int pageSize,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(true) bool first,
    @Default(true) bool last,
  }) = _MyPendingReviewPageDto;

  factory MyPendingReviewPageDto.fromJson(Map<String, dynamic> json) =>
      _$MyPendingReviewPageDtoFromJson(json);
}

@freezed
abstract class MyWrittenReviewPageEnvelope with _$MyWrittenReviewPageEnvelope {
  const factory MyWrittenReviewPageEnvelope({
    required bool success,
    MyWrittenReviewPageDto? data,
    String? message,
    String? code,
  }) = _MyWrittenReviewPageEnvelope;

  factory MyWrittenReviewPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$MyWrittenReviewPageEnvelopeFromJson(json);
}

@freezed
abstract class MyPendingReviewPageEnvelope with _$MyPendingReviewPageEnvelope {
  const factory MyPendingReviewPageEnvelope({
    required bool success,
    MyPendingReviewPageDto? data,
    String? message,
    String? code,
  }) = _MyPendingReviewPageEnvelope;

  factory MyPendingReviewPageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$MyPendingReviewPageEnvelopeFromJson(json);
}
