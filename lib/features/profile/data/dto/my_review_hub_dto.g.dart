// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_review_hub_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchReviewSummaryDto _$MatchReviewSummaryDtoFromJson(
  Map<String, dynamic> json,
) => _MatchReviewSummaryDto(
  matchId: (json['matchId'] as num).toInt(),
  title: json['title'] as String,
  matchDate: json['matchDate'] as String,
  startTime: json['startTime'] as String,
);

Map<String, dynamic> _$MatchReviewSummaryDtoToJson(
  _MatchReviewSummaryDto instance,
) => <String, dynamic>{
  'matchId': instance.matchId,
  'title': instance.title,
  'matchDate': instance.matchDate,
  'startTime': instance.startTime,
};

_ReviewerPublicSummaryDto _$ReviewerPublicSummaryDtoFromJson(
  Map<String, dynamic> json,
) => _ReviewerPublicSummaryDto(
  userId: (json['userId'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImg: json['profileImg'] as String?,
);

Map<String, dynamic> _$ReviewerPublicSummaryDtoToJson(
  _ReviewerPublicSummaryDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImg': instance.profileImg,
};

_WrittenReviewListItemDto _$WrittenReviewListItemDtoFromJson(
  Map<String, dynamic> json,
) => _WrittenReviewListItemDto(
  reviewId: (json['reviewId'] as num).toInt(),
  match: MatchReviewSummaryDto.fromJson(json['match'] as Map<String, dynamic>),
  reviewee: ReviewerPublicSummaryDto.fromJson(
    json['reviewee'] as Map<String, dynamic>,
  ),
  sentiment: json['sentiment'] as String?,
  score: (json['score'] as num?)?.toInt(),
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  detail: json['detail'] as String?,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$WrittenReviewListItemDtoToJson(
  _WrittenReviewListItemDto instance,
) => <String, dynamic>{
  'reviewId': instance.reviewId,
  'match': instance.match,
  'reviewee': instance.reviewee,
  'sentiment': instance.sentiment,
  'score': instance.score,
  'hashtags': instance.hashtags,
  'detail': instance.detail,
  'createdAt': instance.createdAt,
};

_PendingReviewItemDto _$PendingReviewItemDtoFromJson(
  Map<String, dynamic> json,
) => _PendingReviewItemDto(
  matchId: (json['matchId'] as num).toInt(),
  match: MatchReviewSummaryDto.fromJson(json['match'] as Map<String, dynamic>),
  revieweeId: (json['revieweeId'] as num).toInt(),
  reviewee: ReviewerPublicSummaryDto.fromJson(
    json['reviewee'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PendingReviewItemDtoToJson(
  _PendingReviewItemDto instance,
) => <String, dynamic>{
  'matchId': instance.matchId,
  'match': instance.match,
  'revieweeId': instance.revieweeId,
  'reviewee': instance.reviewee,
};

_MyWrittenReviewPageDto _$MyWrittenReviewPageDtoFromJson(
  Map<String, dynamic> json,
) => _MyWrittenReviewPageDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => WrittenReviewListItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <WrittenReviewListItemDto>[],
  page: (json['page'] as num?)?.toInt() ?? 0,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
  totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
  first: json['first'] as bool? ?? true,
  last: json['last'] as bool? ?? true,
);

Map<String, dynamic> _$MyWrittenReviewPageDtoToJson(
  _MyWrittenReviewPageDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'page': instance.page,
  'pageSize': instance.pageSize,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
  'first': instance.first,
  'last': instance.last,
};

_MyPendingReviewPageDto _$MyPendingReviewPageDtoFromJson(
  Map<String, dynamic> json,
) => _MyPendingReviewPageDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PendingReviewItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PendingReviewItemDto>[],
  page: (json['page'] as num?)?.toInt() ?? 0,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
  totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
  totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
  first: json['first'] as bool? ?? true,
  last: json['last'] as bool? ?? true,
);

Map<String, dynamic> _$MyPendingReviewPageDtoToJson(
  _MyPendingReviewPageDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'page': instance.page,
  'pageSize': instance.pageSize,
  'totalElements': instance.totalElements,
  'totalPages': instance.totalPages,
  'first': instance.first,
  'last': instance.last,
};

_MyWrittenReviewPageEnvelope _$MyWrittenReviewPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _MyWrittenReviewPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : MyWrittenReviewPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$MyWrittenReviewPageEnvelopeToJson(
  _MyWrittenReviewPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_MyPendingReviewPageEnvelope _$MyPendingReviewPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _MyPendingReviewPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : MyPendingReviewPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$MyPendingReviewPageEnvelopeToJson(
  _MyPendingReviewPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
