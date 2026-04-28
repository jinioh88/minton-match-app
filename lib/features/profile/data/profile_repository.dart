import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/dio_provider.dart';
import '../../match/data/dto/match_view_dto.dart';
import '../data/dto/friendship_dto.dart';
import 'dto/my_review_hub_dto.dart';
import 'dto/user_penalty_dto.dart';
import 'dto/user_profile_dto.dart';
import 'dto/user_profile_patch_dto.dart';
import 'dto/user_review_dto.dart';
import 'users_api_service.dart';

final usersApiServiceProvider = Provider<UsersApiService>((ref) {
  return UsersApiService(ref.watch(dioProvider));
});

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(ref.watch(usersApiServiceProvider));
});

class ProfileRepository {
  ProfileRepository(this._api);

  final UsersApiService _api;

  Future<bool> isNicknameAvailable(String nickname) async {
    final res = await _api.checkNickname(nickname);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '닉네임 확인에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data.available;
  }

  Future<UserProfileDto> getMe() async {
    final res = await _api.getMe();
    return _unwrapProfile(res);
  }

  Future<UserProfileDto> patchMe(UserProfilePatchDto body) async {
    final res = await _api.patchMe(body.toJson());
    return _unwrapProfile(res);
  }

  Future<UserProfileDto> uploadProfileImage(File imageFile) async {
    final res = await _api.uploadProfileImage(imageFile);
    return _unwrapProfile(res);
  }

  Future<UserProfileDto> getUser(int userId) async {
    final res = await _api.getUser(userId);
    return _unwrapProfile(res);
  }

  Future<UserReviewPageDto> getUserReviews(
    int userId, {
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getUserReviews(userId, page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '후기 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<UserPenaltyPageDto> getUserPenalties(
    int userId, {
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getUserPenalties(userId, page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '패널티 이력을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MatchListPageDto> getMyHostedMatches({
    String? status,
    String? dateFrom,
    String? dateTo,
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getMyHostedMatches(
      status: status,
      dateFrom: dateFrom,
      dateTo: dateTo,
      page: page,
      size: size,
    );
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '내가 연 매칭 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MatchListPageDto> getMyParticipatedMatches({
    String? status,
    String? dateFrom,
    String? dateTo,
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getMyParticipatedMatches(
      status: status,
      dateFrom: dateFrom,
      dateTo: dateTo,
      page: page,
      size: size,
    );
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '내가 참여한 매칭 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MyWrittenReviewPageDto> getMyWrittenReviews({
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getMyWrittenReviews(page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '내가 작성한 후기를 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<MyPendingReviewPageDto> getMyPendingReviews({
    int page = 0,
    int size = 20,
  }) async {
    final res = await _api.getMyPendingReviews(page: page, size: size);
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '작성 대기 후기를 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<FollowingUserDto> followUser(int followingUserId) async {
    final res = await _api.followUser(
      FollowRequestDto(followingUserId: followingUserId).toJson(),
    );
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '팔로우에 실패했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }

  Future<List<FollowingUserDto>> getMyFollowings() async {
    final res = await _api.getMyFollowings();
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '팔로잉 목록을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return res.data;
  }

  Future<void> unfollowUser(int followingUserId) async {
    final res = await _api.unfollowUser(followingUserId);
    if (!res.success) {
      throw ApiException(
        message: res.message ?? '언팔로우에 실패했습니다.',
        businessCode: res.code,
      );
    }
  }

  UserProfileDto _unwrapProfile(UserProfileEnvelope res) {
    final data = res.data;
    if (!res.success || data == null) {
      throw ApiException(
        message: res.message ?? '프로필을 불러오지 못했습니다.',
        businessCode: res.code,
      );
    }
    return data;
  }
}
