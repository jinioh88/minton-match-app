import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_match_dto.dart';

part 'match_view_dto.freezed.dart';
part 'match_view_dto.g.dart';

@freezed
abstract class MatchListItemDto with _$MatchListItemDto {
  const factory MatchListItemDto({
    required int matchId,
    required String title,
    required String matchDate,
    required String startTime,
    String? locationName,
    required int maxPeople,
    required int currentPeople,
    String? targetLevels,
    required CostPolicy costPolicy,
    String? imageUrl,
    String? hostNickname,
    String? hostProfileImg,
    double? hostRatingScore,
    required String status,
  }) = _MatchListItemDto;

  factory MatchListItemDto.fromJson(Map<String, dynamic> json) =>
      _$MatchListItemDtoFromJson(json);
}

@freezed
abstract class MatchListPageDto with _$MatchListPageDto {
  const factory MatchListPageDto({
    @Default(<MatchListItemDto>[]) List<MatchListItemDto> content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
  }) = _MatchListPageDto;

  factory MatchListPageDto.fromJson(Map<String, dynamic> json) =>
      _$MatchListPageDtoFromJson(json);
}

@freezed
abstract class MatchListEnvelope with _$MatchListEnvelope {
  const factory MatchListEnvelope({
    required bool success,
    MatchListPageDto? data,
    String? message,
    String? code,
  }) = _MatchListEnvelope;

  factory MatchListEnvelope.fromJson(Map<String, dynamic> json) =>
      _$MatchListEnvelopeFromJson(json);
}

@freezed
abstract class MatchHostDto with _$MatchHostDto {
  const factory MatchHostDto({
    required int id,
    required String nickname,
    String? profileImg,
    double? ratingScore,
  }) = _MatchHostDto;

  factory MatchHostDto.fromJson(Map<String, dynamic> json) =>
      _$MatchHostDtoFromJson(json);
}

@freezed
abstract class MatchParticipantDto with _$MatchParticipantDto {
  const factory MatchParticipantDto({
    int? participationId,
    int? userId,
    String? nickname,
    String? profileImg,
    double? ratingScore,
    String? status,
    int? queueOrder,
    String? applyMessage,
    String? offerExpiresAt,
  }) = _MatchParticipantDto;

  factory MatchParticipantDto.fromJson(Map<String, dynamic> json) =>
      _$MatchParticipantDtoFromJson(json);
}

@freezed
abstract class MatchDetailDto with _$MatchDetailDto {
  const factory MatchDetailDto({
    required int matchId,
    required int hostId,
    required String title,
    required String description,
    required String matchDate,
    required String startTime,
    required int durationMin,
    String? locationName,
    required String regionCode,
    required int maxPeople,
    required int currentPeople,
    String? targetLevels,
    required CostPolicy costPolicy,
    required String status,
    String? imageUrl,
    double? latitude,
    double? longitude,
    MatchHostDto? host,
    @Default(<MatchParticipantDto>[]) List<MatchParticipantDto> confirmedParticipants,
    @Default(<MatchParticipantDto>[]) List<MatchParticipantDto> waitingList,
    @Default(0) int waitingCount,
    String? serverTime,
    bool? isEmergencyMode,
    MyParticipationSummaryDto? myParticipation,
    bool? canApply,
    bool? canCancel,
    bool? hasWaitingOffer,
    @Default(false) bool canFinishMatch,
    @Default(<int>[]) List<int> reviewPendingUserIds,
  }) = _MatchDetailDto;

  factory MatchDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailDtoFromJson(json);
}

@freezed
abstract class MyParticipationSummaryDto with _$MyParticipationSummaryDto {
  const factory MyParticipationSummaryDto({
    required int participationId,
    required String status,
    @Default(0) int queueOrder,
    String? applyMessage,
    String? offerExpiresAt,
  }) = _MyParticipationSummaryDto;

  factory MyParticipationSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$MyParticipationSummaryDtoFromJson(json);
}

@freezed
abstract class ParticipationActionResponseDto with _$ParticipationActionResponseDto {
  const factory ParticipationActionResponseDto({
    required int participationId,
    required String status,
    @Default(0) int queueOrder,
    String? applyMessage,
    String? offerExpiresAt,
  }) = _ParticipationActionResponseDto;

  factory ParticipationActionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParticipationActionResponseDtoFromJson(json);
}

@freezed
abstract class ParticipationActionEnvelope with _$ParticipationActionEnvelope {
  const factory ParticipationActionEnvelope({
    required bool success,
    ParticipationActionResponseDto? data,
    String? message,
    String? code,
  }) = _ParticipationActionEnvelope;

  factory ParticipationActionEnvelope.fromJson(Map<String, dynamic> json) =>
      _$ParticipationActionEnvelopeFromJson(json);
}

@freezed
abstract class EmptyEnvelope with _$EmptyEnvelope {
  const factory EmptyEnvelope({
    required bool success,
    Object? data,
    String? message,
    String? code,
  }) = _EmptyEnvelope;

  factory EmptyEnvelope.fromJson(Map<String, dynamic> json) => _$EmptyEnvelopeFromJson(json);
}

@freezed
abstract class MatchApplicationDto with _$MatchApplicationDto {
  const factory MatchApplicationDto({
    required int participationId,
    required int userId,
    required String nickname,
    String? profileImg,
    double? ratingScore,
    String? level,
    @Default(<String>[]) List<String> interestRegions,
    required String status,
    @Default(0) int queueOrder,
    String? applyMessage,
    String? appliedAt,
    String? offerExpiresAt,
  }) = _MatchApplicationDto;

  factory MatchApplicationDto.fromJson(Map<String, dynamic> json) =>
      _$MatchApplicationDtoFromJson(json);
}

@freezed
abstract class MatchApplicationsEnvelope with _$MatchApplicationsEnvelope {
  const factory MatchApplicationsEnvelope({
    required bool success,
    @Default(<MatchApplicationDto>[]) List<MatchApplicationDto> data,
    String? message,
    String? code,
  }) = _MatchApplicationsEnvelope;

  factory MatchApplicationsEnvelope.fromJson(Map<String, dynamic> json) =>
      _$MatchApplicationsEnvelopeFromJson(json);
}

@freezed
abstract class MatchDetailEnvelope with _$MatchDetailEnvelope {
  const factory MatchDetailEnvelope({
    required bool success,
    MatchDetailDto? data,
    String? message,
    String? code,
  }) = _MatchDetailEnvelope;

  factory MatchDetailEnvelope.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailEnvelopeFromJson(json);
}

@freezed
abstract class MatchUpdateRequestDto with _$MatchUpdateRequestDto {
  const factory MatchUpdateRequestDto({
    required String title,
    required String description,
    required String matchDate,
    required String startTime,
    required int durationMin,
    String? locationName,
    required String regionCode,
    required int maxPeople,
    String? targetLevels,
    required CostPolicy costPolicy,
    String? imageUrl,
    double? latitude,
    double? longitude,
  }) = _MatchUpdateRequestDto;

  factory MatchUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MatchUpdateRequestDtoFromJson(json);
}
