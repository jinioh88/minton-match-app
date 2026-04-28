import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/user_penalty_dto.dart';
import '../data/profile_repository.dart';

class UserPenaltiesQuery {
  const UserPenaltiesQuery({
    required this.userId,
    this.page = 0,
    this.size = 20,
  });

  final int userId;
  final int page;
  final int size;

  @override
  bool operator ==(Object other) {
    return other is UserPenaltiesQuery &&
        other.userId == userId &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => Object.hash(userId, page, size);
}

final userPenaltiesProvider =
    FutureProvider.family<UserPenaltyPageDto, UserPenaltiesQuery>((ref, query) {
  return ref.read(profileRepositoryProvider).getUserPenalties(
        query.userId,
        page: query.page,
        size: query.size,
      );
});
