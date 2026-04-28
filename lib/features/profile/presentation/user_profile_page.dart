import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/app_error_snackbar.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../data/dto/user_penalty_dto.dart';
import '../data/dto/user_profile_dto.dart';
import '../data/dto/user_review_dto.dart';
import '../data/profile_repository.dart';
import 'my_friendships_provider.dart';
import 'user_profile_by_id_provider.dart';
import 'user_penalties_provider.dart';
import 'user_reviews_provider.dart';
import 'widgets/profile_overview_widgets.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (userId <= 0) {
      return Scaffold(
        appBar: AppBar(title: const Text('프로필')),
        body: const AppErrorMessageView(message: '잘못된 사용자입니다.'),
      );
    }

    final async = ref.watch(userProfileByIdProvider(userId));
    final reviewsAsync = ref.watch(
      userReviewsProvider(UserReviewsQuery(userId: userId)),
    );
    final penaltiesAsync = ref.watch(
      userPenaltiesProvider(UserPenaltiesQuery(userId: userId)),
    );
    final followingsAsync = ref.watch(myFollowingsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('프로필'),
      ),
      body: async.when(
        data: (p) => ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ProfileOverviewHeader(
              profile: p,
              joinedAtText: _joinedAtLabel(p.joinedAt),
              tags: _resolvedTags(p.mannerTags),
            ),
            const SizedBox(height: 10),
            followingsAsync.when(
              data: (followings) {
                final isFollowing = followings.any((e) => e.userId == userId);
                return Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      try {
                        if (isFollowing) {
                          await ref
                              .read(profileRepositoryProvider)
                              .unfollowUser(userId);
                        } else {
                          await ref
                              .read(profileRepositoryProvider)
                              .followUser(userId);
                        }
                        ref.invalidate(myFollowingsProvider);
                      } catch (e) {
                        if (!context.mounted) return;
                        showApiErrorSnackBar(context, e);
                      }
                    },
                    icon: Icon(
                      isFollowing
                          ? Icons.person_remove_alt_1
                          : Icons.person_add_alt_1,
                    ),
                    label: Text(isFollowing ? '언팔로우' : '팔로우'),
                  ),
                );
              },
              loading: () => const SizedBox.shrink(),
              error: (_, _) => const SizedBox.shrink(),
            ),
            const SizedBox(height: 24),
            ProfileActivitySummarySection(profile: p),
            if (p.showCautionBadge == true || (p.penaltyCount ?? 0) > 0) ...[
              const SizedBox(height: 14),
              _PenaltyCautionBanner(profile: p),
            ],
            const SizedBox(height: 24),
            ProfileDetailsSection(
              title: '상세 정보',
              loc1Label: regionCodeLabel(p.interestLoc1),
              loc2Label: regionCodeLabel(p.interestLoc2),
              racketLabel: p.racketInfo?.trim().isNotEmpty == true
                  ? p.racketInfo!.trim()
                  : '-',
              playStyleLabel: p.playStyle,
            ),
            const SizedBox(height: 24),
            _UserReviewSection(async: reviewsAsync),
            const SizedBox(height: 18),
            _UserPenaltyHistorySection(async: penaltiesAsync),
          ],
        ),
        loading: () => const AppLoadingIndicator(),
        error: (e, _) => AppErrorMessageView(message: e.toString()),
      ),
    );
  }
}

class _UserReviewSection extends StatelessWidget {
  const _UserReviewSection({required this.async});

  final AsyncValue<UserReviewPageDto> async;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '받은 후기',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        async.when(
          data: (page) {
            if (page.items.isEmpty) {
              return const _ReviewEmptyCard(message: '아직 받은 후기가 없습니다.');
            }
            return Column(
              children: page.items
                  .map((item) => _ReviewListTile(item: item))
                  .toList(),
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: AppLoadingIndicator(),
          ),
          error: (_, _) =>
              const _ReviewEmptyCard(message: '후기 목록을 불러오지 못했습니다.'),
        ),
      ],
    );
  }
}

class _ReviewListTile extends StatelessWidget {
  const _ReviewListTile({required this.item});

  final UserReviewItemDto item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final masked = !item.contentRevealed;
    final title =
        '${item.match.title} · ${item.match.matchDate} ${item.match.startTime}';
    final reviewer = masked ? '작성자 비공개' : (item.reviewer?.nickname ?? '알 수 없음');
    final scoreText = masked || item.score == null ? '-' : '${item.score}점';
    final hashtags = masked ? const <String>[] : item.hashtags;
    final detail = masked ? null : item.detail;

    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE6EAF2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '작성자: $reviewer',
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF475569),
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '별점: $scoreText',
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF475569),
              ),
            ),
            if (masked) ...[
              const SizedBox(height: 8),
              Text(
                '후기 내용은 공개 시점 이후 또는 상호 후기 작성 시 확인할 수 있습니다.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF64748B),
                ),
              ),
            ],
            if (hashtags.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: hashtags
                    .take(10)
                    .map((e) => _ReviewTagChip(label: '#$e'))
                    .toList(),
              ),
            ],
            if (detail != null && detail.trim().isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                detail.trim(),
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.4),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _ReviewTagChip extends StatelessWidget {
  const _ReviewTagChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: const Color(0xFF334155),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ReviewEmptyCard extends StatelessWidget {
  const _ReviewEmptyCard({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: const Color(0xFF64748B)),
      ),
    );
  }
}

class _PenaltyCautionBanner extends StatelessWidget {
  const _PenaltyCautionBanner({required this.profile});

  final UserProfileDto profile;

  @override
  Widget build(BuildContext context) {
    final count = profile.penaltyCount ?? 0;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBEB),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFDE68A)),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Color(0xFFD97706)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              count > 0 ? '패널티 누적 $count회 (주의 대상)' : '주의가 필요한 사용자입니다.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: const Color(0xFF92400E),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserPenaltyHistorySection extends StatelessWidget {
  const _UserPenaltyHistorySection({required this.async});

  final AsyncValue<UserPenaltyPageDto> async;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '패널티 이력',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        async.when(
          data: (page) {
            if (page.items.isEmpty) {
              return const _ReviewEmptyCard(message: '패널티 이력이 없습니다.');
            }
            return Column(
              children: page.items.map((item) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE6EAF2)),
                  ),
                  child: ListTile(
                    title: Text(
                      item.type == 'NO_SHOW' ? '노쇼' : '지각',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      '${item.match.title} · ${item.match.matchDate} ${item.match.startTime}',
                    ),
                    trailing: Text(
                      item.hostNickname?.trim().isNotEmpty == true
                          ? item.hostNickname!.trim()
                          : '-',
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                );
              }).toList(),
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: AppLoadingIndicator(),
          ),
          error: (_, _) =>
              const _ReviewEmptyCard(message: '패널티 이력을 불러오지 못했습니다.'),
        ),
      ],
    );
  }
}

String _joinedAtLabel(String? raw) {
  if (raw == null || raw.trim().isEmpty) return '가입일: -';
  final parsed = DateTime.tryParse(raw.trim());
  if (parsed == null) return '가입일: -';
  final y = parsed.year.toString().padLeft(4, '0');
  final m = parsed.month.toString().padLeft(2, '0');
  final d = parsed.day.toString().padLeft(2, '0');
  return '가입일: $y.$m.$d';
}

List<String> _resolvedTags(List<String>? tags) {
  return (tags ?? const <String>[])
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .take(3)
      .map((e) => e.startsWith('#') ? e : '#$e')
      .toList();
}
