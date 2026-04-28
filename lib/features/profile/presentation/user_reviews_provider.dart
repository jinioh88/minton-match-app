import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/user_review_dto.dart';
import '../data/profile_repository.dart';

class UserReviewsQuery {
  const UserReviewsQuery({
    required this.userId,
    this.page = 0,
    this.size = 20,
  });

  final int userId;
  final int page;
  final int size;

  @override
  bool operator ==(Object other) {
    return other is UserReviewsQuery &&
        other.userId == userId &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => Object.hash(userId, page, size);
}

final userReviewsProvider = FutureProvider.family<UserReviewPageDto, UserReviewsQuery>((
  ref,
  query,
) {
  return ref.read(profileRepositoryProvider).getUserReviews(
        query.userId,
        page: query.page,
        size: query.size,
      );
});
