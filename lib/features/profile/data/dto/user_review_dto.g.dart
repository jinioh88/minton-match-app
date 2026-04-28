// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserReviewMatchDto _$UserReviewMatchDtoFromJson(Map<String, dynamic> json) =>
    _UserReviewMatchDto(
      matchId: (json['matchId'] as num).toInt(),
      title: json['title'] as String,
      matchDate: json['matchDate'] as String,
      startTime: json['startTime'] as String,
    );

Map<String, dynamic> _$UserReviewMatchDtoToJson(_UserReviewMatchDto instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'title': instance.title,
      'matchDate': instance.matchDate,
      'startTime': instance.startTime,
    };

_UserReviewReviewerDto _$UserReviewReviewerDtoFromJson(
  Map<String, dynamic> json,
) => _UserReviewReviewerDto(
  userId: (json['userId'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImg: json['profileImg'] as String?,
);

Map<String, dynamic> _$UserReviewReviewerDtoToJson(
  _UserReviewReviewerDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImg': instance.profileImg,
};

_UserReviewItemDto _$UserReviewItemDtoFromJson(Map<String, dynamic> json) =>
    _UserReviewItemDto(
      reviewId: (json['reviewId'] as num).toInt(),
      match: UserReviewMatchDto.fromJson(json['match'] as Map<String, dynamic>),
      reviewer: json['reviewer'] == null
          ? null
          : UserReviewReviewerDto.fromJson(
              json['reviewer'] as Map<String, dynamic>,
            ),
      sentiment: json['sentiment'] as String?,
      score: (json['score'] as num?)?.toInt(),
      hashtags:
          (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      detail: json['detail'] as String?,
      createdAt: json['createdAt'] as String,
      contentRevealed: json['contentRevealed'] as bool? ?? false,
      reviewSubmitted: json['reviewSubmitted'] as bool? ?? true,
    );

Map<String, dynamic> _$UserReviewItemDtoToJson(_UserReviewItemDto instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'match': instance.match,
      'reviewer': instance.reviewer,
      'sentiment': instance.sentiment,
      'score': instance.score,
      'hashtags': instance.hashtags,
      'detail': instance.detail,
      'createdAt': instance.createdAt,
      'contentRevealed': instance.contentRevealed,
      'reviewSubmitted': instance.reviewSubmitted,
    };

_UserReviewPageDto _$UserReviewPageDtoFromJson(Map<String, dynamic> json) =>
    _UserReviewPageDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => UserReviewItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <UserReviewItemDto>[],
      page: (json['page'] as num?)?.toInt() ?? 0,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
      totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      first: json['first'] as bool? ?? true,
      last: json['last'] as bool? ?? true,
    );

Map<String, dynamic> _$UserReviewPageDtoToJson(_UserReviewPageDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'first': instance.first,
      'last': instance.last,
    };

_UserReviewPageEnvelope _$UserReviewPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _UserReviewPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : UserReviewPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$UserReviewPageEnvelopeToJson(
  _UserReviewPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
