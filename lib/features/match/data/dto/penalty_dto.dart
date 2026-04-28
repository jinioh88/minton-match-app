import 'package:freezed_annotation/freezed_annotation.dart';

part 'penalty_dto.freezed.dart';
part 'penalty_dto.g.dart';

@freezed
abstract class CreatePenaltyRequestDto with _$CreatePenaltyRequestDto {
  const factory CreatePenaltyRequestDto({
    required int userId,
    required String type,
  }) = _CreatePenaltyRequestDto;

  factory CreatePenaltyRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePenaltyRequestDtoFromJson(json);
}

@freezed
abstract class CreatedPenaltyDto with _$CreatedPenaltyDto {
  const factory CreatedPenaltyDto({
    required int penaltyId,
    required int matchId,
    required int userId,
    required String type,
    required String createdAt,
  }) = _CreatedPenaltyDto;

  factory CreatedPenaltyDto.fromJson(Map<String, dynamic> json) =>
      _$CreatedPenaltyDtoFromJson(json);
}

@freezed
abstract class CreatePenaltyEnvelope with _$CreatePenaltyEnvelope {
  const factory CreatePenaltyEnvelope({
    required bool success,
    CreatedPenaltyDto? data,
    String? message,
    String? code,
  }) = _CreatePenaltyEnvelope;

  factory CreatePenaltyEnvelope.fromJson(Map<String, dynamic> json) =>
      _$CreatePenaltyEnvelopeFromJson(json);
}
