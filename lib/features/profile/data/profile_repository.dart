import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/dio_provider.dart';
import 'dto/user_profile_dto.dart';
import 'dto/user_profile_patch_dto.dart';
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
