import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/user_profile_dto.dart';
import '../data/profile_repository.dart';

final userProfileByIdProvider =
    FutureProvider.autoDispose.family<UserProfileDto, int>((ref, userId) {
  return ref.watch(profileRepositoryProvider).getUser(userId);
});
