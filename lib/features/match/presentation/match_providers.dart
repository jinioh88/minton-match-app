import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dto/match_view_dto.dart';
import '../data/match_repository.dart';

class MatchListQuery {
  const MatchListQuery({
    this.regionCode,
    this.dateFrom,
    this.dateTo,
    this.level,
    this.page = 0,
    this.size = 20,
  });

  final String? regionCode;
  final String? dateFrom;
  final String? dateTo;
  final String? level;
  final int page;
  final int size;

  @override
  bool operator ==(Object other) {
    return other is MatchListQuery &&
        other.regionCode == regionCode &&
        other.dateFrom == dateFrom &&
        other.dateTo == dateTo &&
        other.level == level &&
        other.page == page &&
        other.size == size;
  }

  @override
  int get hashCode => Object.hash(
    regionCode,
    dateFrom,
    dateTo,
    level,
    page,
    size,
  );
}

final matchListProvider = FutureProvider.family<MatchListPageDto, MatchListQuery>((
  ref,
  query,
) {
  return ref.read(matchRepositoryProvider).getMatches(
    regionCode: query.regionCode,
    dateFrom: query.dateFrom,
    dateTo: query.dateTo,
    level: query.level,
    page: query.page,
    size: query.size,
  );
});

final matchDetailProvider = FutureProvider.family<MatchDetailDto, int>((
  ref,
  matchId,
) {
  return ref.read(matchRepositoryProvider).getMatchDetail(matchId);
});

final applicationsProvider = FutureProvider.family<List<MatchApplicationDto>, int>((
  ref,
  matchId,
) async {
  final items = await ref.read(matchRepositoryProvider).getApplications(matchId);
  final sorted = [...items];
  sorted.sort((a, b) {
    final statusCompare = _applicationStatusOrder(
      a.status,
    ).compareTo(_applicationStatusOrder(b.status));
    if (statusCompare != 0) return statusCompare;
    return a.queueOrder.compareTo(b.queueOrder);
  });
  return sorted;
});

int _applicationStatusOrder(String status) {
  return switch (status) {
    'PENDING' => 0,
    'RESERVED' => 1,
    'WAITING' => 2,
    _ => 9,
  };
}
