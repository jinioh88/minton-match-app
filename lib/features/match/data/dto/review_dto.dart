import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
abstract class CreateReviewRequestDto with _$CreateReviewRequestDto {
  const factory CreateReviewRequestDto({
    required int revieweeId,
    required String sentiment,
    required int score,
    @Default(<String>[]) List<String> hashtags,
    String? detail,
  }) = _CreateReviewRequestDto;

  factory CreateReviewRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewRequestDtoFromJson(json);
}

@freezed
abstract class ReviewCreatedDto with _$ReviewCreatedDto {
  const factory ReviewCreatedDto({
    required int reviewId,
    required int matchId,
    required int revieweeId,
    required String sentiment,
    required int score,
    @Default(<String>[]) List<String> hashtags,
    String? detail,
    required String createdAt,
  }) = _ReviewCreatedDto;

  factory ReviewCreatedDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreatedDtoFromJson(json);
}

@freezed
abstract class ReviewCreateEnvelope with _$ReviewCreateEnvelope {
  const factory ReviewCreateEnvelope({
    required bool success,
    ReviewCreatedDto? data,
    String? message,
    String? code,
  }) = _ReviewCreateEnvelope;

  factory ReviewCreateEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreateEnvelopeFromJson(json);
}
