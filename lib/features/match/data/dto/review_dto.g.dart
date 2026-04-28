// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateReviewRequestDto _$CreateReviewRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateReviewRequestDto(
  revieweeId: (json['revieweeId'] as num).toInt(),
  sentiment: json['sentiment'] as String,
  score: (json['score'] as num).toInt(),
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  detail: json['detail'] as String?,
);

Map<String, dynamic> _$CreateReviewRequestDtoToJson(
  _CreateReviewRequestDto instance,
) => <String, dynamic>{
  'revieweeId': instance.revieweeId,
  'sentiment': instance.sentiment,
  'score': instance.score,
  'hashtags': instance.hashtags,
  'detail': instance.detail,
};

_ReviewCreatedDto _$ReviewCreatedDtoFromJson(Map<String, dynamic> json) =>
    _ReviewCreatedDto(
      reviewId: (json['reviewId'] as num).toInt(),
      matchId: (json['matchId'] as num).toInt(),
      revieweeId: (json['revieweeId'] as num).toInt(),
      sentiment: json['sentiment'] as String,
      score: (json['score'] as num).toInt(),
      hashtags:
          (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      detail: json['detail'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ReviewCreatedDtoToJson(_ReviewCreatedDto instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'matchId': instance.matchId,
      'revieweeId': instance.revieweeId,
      'sentiment': instance.sentiment,
      'score': instance.score,
      'hashtags': instance.hashtags,
      'detail': instance.detail,
      'createdAt': instance.createdAt,
    };

_ReviewCreateEnvelope _$ReviewCreateEnvelopeFromJson(
  Map<String, dynamic> json,
) => _ReviewCreateEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ReviewCreatedDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ReviewCreateEnvelopeToJson(
  _ReviewCreateEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
