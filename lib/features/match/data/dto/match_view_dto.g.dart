// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_view_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchListItemDto _$MatchListItemDtoFromJson(Map<String, dynamic> json) =>
    _MatchListItemDto(
      matchId: (json['matchId'] as num).toInt(),
      title: json['title'] as String,
      matchDate: json['matchDate'] as String,
      startTime: json['startTime'] as String,
      locationName: json['locationName'] as String?,
      maxPeople: (json['maxPeople'] as num).toInt(),
      currentPeople: (json['currentPeople'] as num).toInt(),
      targetLevels: json['targetLevels'] as String?,
      costPolicy: $enumDecode(_$CostPolicyEnumMap, json['costPolicy']),
      imageUrl: json['imageUrl'] as String?,
      hostNickname: json['hostNickname'] as String?,
      hostProfileImg: json['hostProfileImg'] as String?,
      hostRatingScore: (json['hostRatingScore'] as num?)?.toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$MatchListItemDtoToJson(_MatchListItemDto instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'title': instance.title,
      'matchDate': instance.matchDate,
      'startTime': instance.startTime,
      'locationName': instance.locationName,
      'maxPeople': instance.maxPeople,
      'currentPeople': instance.currentPeople,
      'targetLevels': instance.targetLevels,
      'costPolicy': _$CostPolicyEnumMap[instance.costPolicy]!,
      'imageUrl': instance.imageUrl,
      'hostNickname': instance.hostNickname,
      'hostProfileImg': instance.hostProfileImg,
      'hostRatingScore': instance.hostRatingScore,
      'status': instance.status,
    };

const _$CostPolicyEnumMap = {
  CostPolicy.splitEqual: 'SPLIT_EQUAL',
  CostPolicy.hostPays: 'HOST_PAYS',
  CostPolicy.guestPays: 'GUEST_PAYS',
};

_MatchListPageDto _$MatchListPageDtoFromJson(Map<String, dynamic> json) =>
    _MatchListPageDto(
      content:
          (json['content'] as List<dynamic>?)
              ?.map((e) => MatchListItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MatchListItemDto>[],
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MatchListPageDtoToJson(_MatchListPageDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
    };

_MatchListEnvelope _$MatchListEnvelopeFromJson(Map<String, dynamic> json) =>
    _MatchListEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : MatchListPageDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$MatchListEnvelopeToJson(_MatchListEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

_MatchHostDto _$MatchHostDtoFromJson(Map<String, dynamic> json) =>
    _MatchHostDto(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImg: json['profileImg'] as String?,
      ratingScore: (json['ratingScore'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MatchHostDtoToJson(_MatchHostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profileImg': instance.profileImg,
      'ratingScore': instance.ratingScore,
    };

_MatchParticipantDto _$MatchParticipantDtoFromJson(Map<String, dynamic> json) =>
    _MatchParticipantDto(
      participationId: (json['participationId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      nickname: json['nickname'] as String?,
      profileImg: json['profileImg'] as String?,
      ratingScore: (json['ratingScore'] as num?)?.toDouble(),
      status: json['status'] as String?,
      queueOrder: (json['queueOrder'] as num?)?.toInt(),
      applyMessage: json['applyMessage'] as String?,
      offerExpiresAt: json['offerExpiresAt'] as String?,
    );

Map<String, dynamic> _$MatchParticipantDtoToJson(
  _MatchParticipantDto instance,
) => <String, dynamic>{
  'participationId': instance.participationId,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImg': instance.profileImg,
  'ratingScore': instance.ratingScore,
  'status': instance.status,
  'queueOrder': instance.queueOrder,
  'applyMessage': instance.applyMessage,
  'offerExpiresAt': instance.offerExpiresAt,
};

_MatchDetailDto _$MatchDetailDtoFromJson(
  Map<String, dynamic> json,
) => _MatchDetailDto(
  matchId: (json['matchId'] as num).toInt(),
  hostId: (json['hostId'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  matchDate: json['matchDate'] as String,
  startTime: json['startTime'] as String,
  durationMin: (json['durationMin'] as num).toInt(),
  locationName: json['locationName'] as String?,
  regionCode: json['regionCode'] as String,
  maxPeople: (json['maxPeople'] as num).toInt(),
  currentPeople: (json['currentPeople'] as num).toInt(),
  targetLevels: json['targetLevels'] as String?,
  costPolicy: $enumDecode(_$CostPolicyEnumMap, json['costPolicy']),
  status: json['status'] as String,
  imageUrl: json['imageUrl'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  host: json['host'] == null
      ? null
      : MatchHostDto.fromJson(json['host'] as Map<String, dynamic>),
  confirmedParticipants:
      (json['confirmedParticipants'] as List<dynamic>?)
          ?.map((e) => MatchParticipantDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MatchParticipantDto>[],
  waitingList:
      (json['waitingList'] as List<dynamic>?)
          ?.map((e) => MatchParticipantDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MatchParticipantDto>[],
  waitingCount: (json['waitingCount'] as num?)?.toInt() ?? 0,
  serverTime: json['serverTime'] as String?,
  isEmergencyMode: json['isEmergencyMode'] as bool?,
  myParticipation: json['myParticipation'] == null
      ? null
      : MyParticipationSummaryDto.fromJson(
          json['myParticipation'] as Map<String, dynamic>,
        ),
  canApply: json['canApply'] as bool?,
  canCancel: json['canCancel'] as bool?,
  hasWaitingOffer: json['hasWaitingOffer'] as bool?,
  canFinishMatch: json['canFinishMatch'] as bool? ?? false,
  reviewPendingUserIds:
      (json['reviewPendingUserIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
);

Map<String, dynamic> _$MatchDetailDtoToJson(_MatchDetailDto instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'hostId': instance.hostId,
      'title': instance.title,
      'description': instance.description,
      'matchDate': instance.matchDate,
      'startTime': instance.startTime,
      'durationMin': instance.durationMin,
      'locationName': instance.locationName,
      'regionCode': instance.regionCode,
      'maxPeople': instance.maxPeople,
      'currentPeople': instance.currentPeople,
      'targetLevels': instance.targetLevels,
      'costPolicy': _$CostPolicyEnumMap[instance.costPolicy]!,
      'status': instance.status,
      'imageUrl': instance.imageUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'host': instance.host,
      'confirmedParticipants': instance.confirmedParticipants,
      'waitingList': instance.waitingList,
      'waitingCount': instance.waitingCount,
      'serverTime': instance.serverTime,
      'isEmergencyMode': instance.isEmergencyMode,
      'myParticipation': instance.myParticipation,
      'canApply': instance.canApply,
      'canCancel': instance.canCancel,
      'hasWaitingOffer': instance.hasWaitingOffer,
      'canFinishMatch': instance.canFinishMatch,
      'reviewPendingUserIds': instance.reviewPendingUserIds,
    };

_MyParticipationSummaryDto _$MyParticipationSummaryDtoFromJson(
  Map<String, dynamic> json,
) => _MyParticipationSummaryDto(
  participationId: (json['participationId'] as num).toInt(),
  status: json['status'] as String,
  queueOrder: (json['queueOrder'] as num?)?.toInt() ?? 0,
  applyMessage: json['applyMessage'] as String?,
  offerExpiresAt: json['offerExpiresAt'] as String?,
);

Map<String, dynamic> _$MyParticipationSummaryDtoToJson(
  _MyParticipationSummaryDto instance,
) => <String, dynamic>{
  'participationId': instance.participationId,
  'status': instance.status,
  'queueOrder': instance.queueOrder,
  'applyMessage': instance.applyMessage,
  'offerExpiresAt': instance.offerExpiresAt,
};

_ParticipationActionResponseDto _$ParticipationActionResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ParticipationActionResponseDto(
  participationId: (json['participationId'] as num).toInt(),
  status: json['status'] as String,
  queueOrder: (json['queueOrder'] as num?)?.toInt() ?? 0,
  applyMessage: json['applyMessage'] as String?,
  offerExpiresAt: json['offerExpiresAt'] as String?,
);

Map<String, dynamic> _$ParticipationActionResponseDtoToJson(
  _ParticipationActionResponseDto instance,
) => <String, dynamic>{
  'participationId': instance.participationId,
  'status': instance.status,
  'queueOrder': instance.queueOrder,
  'applyMessage': instance.applyMessage,
  'offerExpiresAt': instance.offerExpiresAt,
};

_ParticipationActionEnvelope _$ParticipationActionEnvelopeFromJson(
  Map<String, dynamic> json,
) => _ParticipationActionEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : ParticipationActionResponseDto.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ParticipationActionEnvelopeToJson(
  _ParticipationActionEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_EmptyEnvelope _$EmptyEnvelopeFromJson(Map<String, dynamic> json) =>
    _EmptyEnvelope(
      success: json['success'] as bool,
      data: json['data'],
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$EmptyEnvelopeToJson(_EmptyEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

_MatchApplicationDto _$MatchApplicationDtoFromJson(Map<String, dynamic> json) =>
    _MatchApplicationDto(
      participationId: (json['participationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImg: json['profileImg'] as String?,
      ratingScore: (json['ratingScore'] as num?)?.toDouble(),
      level: json['level'] as String?,
      interestRegions:
          (json['interestRegions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      status: json['status'] as String,
      queueOrder: (json['queueOrder'] as num?)?.toInt() ?? 0,
      applyMessage: json['applyMessage'] as String?,
      appliedAt: json['appliedAt'] as String?,
      offerExpiresAt: json['offerExpiresAt'] as String?,
    );

Map<String, dynamic> _$MatchApplicationDtoToJson(
  _MatchApplicationDto instance,
) => <String, dynamic>{
  'participationId': instance.participationId,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImg': instance.profileImg,
  'ratingScore': instance.ratingScore,
  'level': instance.level,
  'interestRegions': instance.interestRegions,
  'status': instance.status,
  'queueOrder': instance.queueOrder,
  'applyMessage': instance.applyMessage,
  'appliedAt': instance.appliedAt,
  'offerExpiresAt': instance.offerExpiresAt,
};

_MatchApplicationsEnvelope _$MatchApplicationsEnvelopeFromJson(
  Map<String, dynamic> json,
) => _MatchApplicationsEnvelope(
  success: json['success'] as bool,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => MatchApplicationDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MatchApplicationDto>[],
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$MatchApplicationsEnvelopeToJson(
  _MatchApplicationsEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_MatchDetailEnvelope _$MatchDetailEnvelopeFromJson(Map<String, dynamic> json) =>
    _MatchDetailEnvelope(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : MatchDetailDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$MatchDetailEnvelopeToJson(
  _MatchDetailEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};

_MatchUpdateRequestDto _$MatchUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MatchUpdateRequestDto(
  title: json['title'] as String,
  description: json['description'] as String,
  matchDate: json['matchDate'] as String,
  startTime: json['startTime'] as String,
  durationMin: (json['durationMin'] as num).toInt(),
  locationName: json['locationName'] as String?,
  regionCode: json['regionCode'] as String,
  maxPeople: (json['maxPeople'] as num).toInt(),
  targetLevels: json['targetLevels'] as String?,
  costPolicy: $enumDecode(_$CostPolicyEnumMap, json['costPolicy']),
  imageUrl: json['imageUrl'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MatchUpdateRequestDtoToJson(
  _MatchUpdateRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'matchDate': instance.matchDate,
  'startTime': instance.startTime,
  'durationMin': instance.durationMin,
  'locationName': instance.locationName,
  'regionCode': instance.regionCode,
  'maxPeople': instance.maxPeople,
  'targetLevels': instance.targetLevels,
  'costPolicy': _$CostPolicyEnumMap[instance.costPolicy]!,
  'imageUrl': instance.imageUrl,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
