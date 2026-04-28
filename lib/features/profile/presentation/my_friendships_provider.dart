import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/friendship_dto.dart';
import '../data/profile_repository.dart';

final myFollowingsProvider = FutureProvider<List<FollowingUserDto>>((ref) {
  return ref.read(profileRepositoryProvider).getMyFollowings();
});
