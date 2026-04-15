import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/dio_provider.dart';
import 'dto/create_match_dto.dart';
import 'dto/match_view_dto.dart';
import 'matches_api_service.dart';

final matchesApiServiceProvider = Provider<MatchesApiService>((ref) {
  return MatchesApiService(ref.watch(dioProvider));
});

final matchRepositoryProvider = Provider<MatchRepository>((ref) {
  return MatchRepository(ref.watch(matchesApiServiceProvider));
});

class MatchRepository {
  MatchRepository(this._api);

  final MatchesApiService _api;

  Future<String> uploadMatchImage(File imageFile) async {
    final res = await _api.uploadFile(imageFile, 'MATCH');
    final data = res.data;
    if (!res.success || data == null || data.url.trim().isEmpty) {
      throw ApiException(
        message: res.message ?? '이미지 업로드에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data.url;
  }

  Future<CreateMatchResponseDto> createMatch(CreateMatchRequestDto request) async {
    final res = await _api.createMatch(request.toJson());
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '매칭 생성에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MatchListPageDto> getMatches({
    String? regionCode,
    String? dateFrom,
    String? dateTo,
    String? level,
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getMatches(
      regionCode: regionCode,
      dateFrom: dateFrom,
      dateTo: dateTo,
      level: level,
      page: page,
      size: size,
    );
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '매칭 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MatchDetailDto> getMatchDetail(int matchId) async {
    final res = await _api.getMatchDetail(matchId);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '매칭 상세를 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MatchDetailDto> updateMatch(int matchId, MatchUpdateRequestDto request) async {
    final res = await _api.updateMatch(matchId, request.toJson());
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '매칭 수정에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<ParticipationActionResponseDto> applyParticipation(
    int matchId, {
    String? applyMessage,
  }) async {
    final res = await _api.applyParticipation(matchId, {
      if (applyMessage != null && applyMessage.trim().isNotEmpty)
        'applyMessage': applyMessage.trim(),
    });
    return _requireParticipationAction(res, fallbackMessage: '참여 신청에 실패했습니다.');
  }

  Future<void> cancelMyParticipation(int matchId) async {
    final res = await _api.cancelMyParticipation(matchId);
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '참여 취소에 실패했습니다.',
        businessCode: res.code,
      );
    }
  }

  Future<ParticipationActionResponseDto> acceptOffer(int matchId) async {
    final res = await _api.acceptOffer(matchId);
    return _requireParticipationAction(res, fallbackMessage: '참석 수락에 실패했습니다.');
  }

  Future<ParticipationActionResponseDto> rejectOffer(int matchId) async {
    final res = await _api.rejectOffer(matchId);
    return _requireParticipationAction(res, fallbackMessage: '오퍼 거절에 실패했습니다.');
  }

  Future<List<MatchApplicationDto>> getApplications(int matchId) async {
    final res = await _api.getApplications(matchId);
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '신청 목록 조회에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return res.data;
  }

  Future<ParticipationActionResponseDto> manageParticipation({
    required int matchId,
    required int participationId,
    required String action,
  }) async {
    final res = await _api.updateParticipation(
      matchId,
      participationId,
      {'action': action},
    );
    return _requireParticipationAction(res, fallbackMessage: '참여자 상태 변경에 실패했습니다.');
  }

  ParticipationActionResponseDto _requireParticipationAction(
    ParticipationActionEnvelope res, {
    required String fallbackMessage,
  }) {
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? fallbackMessage,
        businessCode: res.code,
      );
    }
    return data;
  }
}
