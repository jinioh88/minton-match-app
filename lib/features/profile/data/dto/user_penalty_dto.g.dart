// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_penalty_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPenaltyMatchDto _$UserPenaltyMatchDtoFromJson(Map<String, dynamic> json) =>
    _UserPenaltyMatchDto(
      matchId: (json['matchId'] as num).toInt(),
      title: json['title'] as String,
      matchDate: json['matchDate'] as String,
      startTime: json['startTime'] as String,
    );

Map<String, dynamic> _$UserPenaltyMatchDtoToJson(
  _UserPenaltyMatchDto instance,
) => <String, dynamic>{
  'matchId': instance.matchId,
  'title': instance.title,
  'matchDate': instance.matchDate,
  'startTime': instance.startTime,
};

_UserPenaltyItemDto _$UserPenaltyItemDtoFromJson(Map<String, dynamic> json) =>
    _UserPenaltyItemDto(
      penaltyId: (json['penaltyId'] as num).toInt(),
      type: json['type'] as String,
      match: UserPenaltyMatchDto.fromJson(
        json['match'] as Map<String, dynamic>,
      ),
      createdAt: json['createdAt'] as String,
      hostNickname: json['hostNickname'] as String?,
    );

Map<String, dynamic> _$UserPenaltyItemDtoToJson(_UserPenaltyItemDto instance) =>
    <String, dynamic>{
      'penaltyId': instance.penaltyId,
      'type': instance.type,
      'match': instance.match,
      'createdAt': instance.createdAt,
      'hostNickname': instance.hostNickname,
    };

_UserPenaltyPageDto _$UserPenaltyPageDtoFromJson(Map<String, dynamic> json) =>
    _UserPenaltyPageDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => UserPenaltyItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <UserPenaltyItemDto>[],
      page: (json['page'] as num?)?.toInt() ?? 0,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
      totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
      totalPages: (json['totalPages'] as num?)?.toInt() ?? 0,
      first: json['first'] as bool? ?? true,
      last: json['last'] as bool? ?? true,
    );

Map<String, dynamic> _$UserPenaltyPageDtoToJson(_UserPenaltyPageDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'first': instance.first,
      'last': instance.last,
    };

_UserPenaltyPageEnvelope _$UserPenaltyPageEnvelopeFromJson(
  Map<String, dynamic> json,
) => _UserPenaltyPageEnvelope(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : UserPenaltyPageDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$UserPenaltyPageEnvelopeToJson(
  _UserPenaltyPageEnvelope instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
