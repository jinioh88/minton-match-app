import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../match/data/dto/match_view_dto.dart';
import '../data/dto/my_review_hub_dto.dart';
import '../data/dto/user_review_dto.dart';
import '../data/profile_repository.dart';

class MyMatchesQuery {
  const MyMatchesQuery({
    this.status,
    this.dateFrom,
    this.dateTo,
    this.page = 0,
    this.size = 20,
  });

  final String? status;
  final String? dateFrom;
  final String? dateTo;
  final int page;
  final int size;

  @override
  bool operator ==(Object other) =>
      other is MyMatchesQuery &&
      other.status == status &&
      other.dateFrom == dateFrom &&
      other.dateTo == dateTo &&
      other.page == page &&
      other.size == size;

  @override
  int get hashCode => Object.hash(status, dateFrom, dateTo, page, size);
}

class MyReviewsQuery {
  const MyReviewsQuery({this.page = 0, this.size = 20});

  final int page;
  final int size;

  @override
  bool operator ==(Object other) =>
      other is MyReviewsQuery && other.page == page && other.size == size;

  @override
  int get hashCode => Object.hash(page, size);
}

final myHostedMatchesProvider =
    FutureProvider.family<MatchListPageDto, MyMatchesQuery>((ref, query) {
      return ref
          .read(profileRepositoryProvider)
          .getMyHostedMatches(
            status: query.status,
            dateFrom: query.dateFrom,
            dateTo: query.dateTo,
            page: query.page,
            size: query.size,
          );
    });

final myParticipatedMatchesProvider =
    FutureProvider.family<MatchListPageDto, MyMatchesQuery>((ref, query) {
      return ref
          .read(profileRepositoryProvider)
          .getMyParticipatedMatches(
            status: query.status,
            dateFrom: query.dateFrom,
            dateTo: query.dateTo,
            page: query.page,
            size: query.size,
          );
    });

final myWrittenReviewsProvider =
    FutureProvider.family<MyWrittenReviewPageDto, MyReviewsQuery>((ref, query) {
      return ref
          .read(profileRepositoryProvider)
          .getMyWrittenReviews(page: query.page, size: query.size);
    });

final myPendingReviewsProvider =
    FutureProvider.family<MyPendingReviewPageDto, MyReviewsQuery>((ref, query) {
      return ref
          .read(profileRepositoryProvider)
          .getMyPendingReviews(page: query.page, size: query.size);
    });

final myReceivedReviewsProvider =
    FutureProvider.family<UserReviewPageDto, MyReviewsQuery>((
      ref,
      query,
    ) async {
      final me = await ref.read(profileRepositoryProvider).getMe();
      return ref
          .read(profileRepositoryProvider)
          .getUserReviews(me.id, page: query.page, size: query.size);
    });
