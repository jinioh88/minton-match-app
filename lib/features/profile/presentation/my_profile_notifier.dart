import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/user_profile_dto.dart';
import '../data/dto/user_profile_patch_dto.dart';
import '../data/profile_repository.dart';

final myProfileNotifierProvider =
    AsyncNotifierProvider<MyProfileNotifier, UserProfileDto>(
  MyProfileNotifier.new,
);

class MyProfileNotifier extends AsyncNotifier<UserProfileDto> {
  @override
  Future<UserProfileDto> build() =>
      ref.read(profileRepositoryProvider).getMe();

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(profileRepositoryProvider).getMe(),
    );
  }

  Future<UserProfileDto> save(UserProfilePatchDto patch) async {
    final updated = await ref.read(profileRepositoryProvider).patchMe(patch);
    state = AsyncData(updated);
    return updated;
  }
}
