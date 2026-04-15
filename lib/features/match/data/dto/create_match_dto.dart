import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/user_level.dart';

part 'create_match_dto.freezed.dart';
part 'create_match_dto.g.dart';

enum CostPolicy {
  @JsonValue('SPLIT_EQUAL')
  splitEqual,
  @JsonValue('HOST_PAYS')
  hostPays,
  @JsonValue('GUEST_PAYS')
  guestPays,
}

extension CostPolicyLabel on CostPolicy {
  String get label => switch (this) {
        CostPolicy.splitEqual => '1/N 정산',
        CostPolicy.hostPays => '방장 부담',
        CostPolicy.guestPays => '게스트 부담',
      };
}

@freezed
abstract class CreateMatchRequestDto with _$CreateMatchRequestDto {
  const factory CreateMatchRequestDto({
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
  }) = _CreateMatchRequestDto;

  factory CreateMatchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateMatchRequestDtoFromJson(json);
}

@freezed
abstract class CreateMatchResponseDto with _$CreateMatchResponseDto {
  const factory CreateMatchResponseDto({
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
    String? targetLevels,
    required CostPolicy costPolicy,
    required String status,
    String? imageUrl,
    double? latitude,
    double? longitude,
    String? createdAt,
  }) = _CreateMatchResponseDto;

  factory CreateMatchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateMatchResponseDtoFromJson(json);
}

@freezed
abstract class CreateMatchEnvelope with _$CreateMatchEnvelope {
  const factory CreateMatchEnvelope({
    required bool success,
    CreateMatchResponseDto? data,
    String? message,
    String? code,
  }) = _CreateMatchEnvelope;

  factory CreateMatchEnvelope.fromJson(Map<String, dynamic> json) =>
      _$CreateMatchEnvelopeFromJson(json);
}

@freezed
abstract class FileUploadResultDto with _$FileUploadResultDto {
  const factory FileUploadResultDto({
    required String url,
    String? key,
  }) = _FileUploadResultDto;

  factory FileUploadResultDto.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResultDtoFromJson(json);
}

@freezed
abstract class FileUploadEnvelope with _$FileUploadEnvelope {
  const factory FileUploadEnvelope({
    required bool success,
    FileUploadResultDto? data,
    String? message,
    String? code,
  }) = _FileUploadEnvelope;

  factory FileUploadEnvelope.fromJson(Map<String, dynamic> json) =>
      _$FileUploadEnvelopeFromJson(json);
}

String serializeTargetLevels(List<UserLevel> levels) {
  if (levels.isEmpty) return '';
  return levels.map((e) => e.apiValue).join(',');
}
