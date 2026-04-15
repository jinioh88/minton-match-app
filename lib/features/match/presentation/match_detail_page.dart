import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../profile/data/profile_repository.dart';
import '../../profile/presentation/widgets/profile_avatar.dart';
import '../data/dto/create_match_dto.dart';
import '../data/dto/match_view_dto.dart';
import '../data/match_repository.dart';
import 'match_providers.dart';

class MatchDetailPage extends ConsumerStatefulWidget {
  const MatchDetailPage({super.key, required this.matchId});

  final int matchId;

  @override
  ConsumerState<MatchDetailPage> createState() => _MatchDetailPageState();
}

class _MatchDetailPageState extends ConsumerState<MatchDetailPage> {
  bool _isSubmitting = false;

  Future<void> _runAction(
    Future<void> Function() action, {
    String? successMessage,
  }) async {
    if (_isSubmitting) return;
    setState(() => _isSubmitting = true);
    try {
      await action();
      ref.invalidate(matchDetailProvider(widget.matchId));
      ref.invalidate(applicationsProvider(widget.matchId));
      if (!mounted) return;
      if (successMessage != null && successMessage.isNotEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(successMessage)));
      }
    } catch (e) {
      if (!mounted) return;
      final isOfferExpired = _businessCodeOf(e) == 'OFFER_EXPIRED';
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_errorMessageForUser(e))));
      if (isOfferExpired) {
        ref.invalidate(matchDetailProvider(widget.matchId));
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  Future<void> _applyParticipation(MatchDetailDto detail) async {
    final controller = TextEditingController();
    final submitted = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('참여 신청'),
        content: TextField(
          controller: controller,
          maxLength: 200,
          decoration: const InputDecoration(
            hintText: '방장에게 전달할 한마디를 입력하세요(선택)',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('취소'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(controller.text.trim()),
            child: const Text('신청'),
          ),
        ],
      ),
    );
    if (submitted == null) return;
    await _runAction(() async {
      await ref
          .read(matchRepositoryProvider)
          .applyParticipation(widget.matchId, applyMessage: submitted);
    }, successMessage: detail.currentPeople >= detail.maxPeople ? '대기 신청이 완료되었습니다.' : '참여 신청이 완료되었습니다.');
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(matchDetailProvider(widget.matchId));
    final meAsync = ref.watch(_myUserIdProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('매칭 상세'),
        actions: [
          async.when(
            data: (m) {
              final myId = meAsync.asData?.value;
              final canEdit =
                  myId != null && myId == m.hostId && m.status == 'RECRUITING';
              if (!canEdit) return const SizedBox.shrink();
              return TextButton(
                onPressed: () => context.push(AppRoutes.matchEdit(m.matchId)),
                child: const Text('수정'),
              );
            },
            loading: () => const SizedBox.shrink(),
            error: (_, _) => const SizedBox.shrink(),
          ),
        ],
      ),
      body: async.when(
        data: (m) => _MatchDetailBody(
          match: m,
          matchId: widget.matchId,
          myUserId: meAsync.asData?.value,
          isSubmitting: _isSubmitting,
          onAcceptOffer: () => _runAction(
            () => ref.read(matchRepositoryProvider).acceptOffer(widget.matchId),
            successMessage: '참석을 수락했습니다.',
          ),
          onRejectOffer: () => _runAction(
            () => ref.read(matchRepositoryProvider).rejectOffer(widget.matchId),
            successMessage: '오퍼를 거절했습니다.',
          ),
          onCancel: () => _runAction(
            () => ref.read(matchRepositoryProvider).cancelMyParticipation(widget.matchId),
            successMessage: '참여를 취소했습니다.',
          ),
          onApply: () => _applyParticipation(m),
          onManage: (participationId, action) => _runAction(
            () => ref.read(matchRepositoryProvider).manageParticipation(
              matchId: widget.matchId,
              participationId: participationId,
              action: action,
            ),
            successMessage: _hostActionSuccessMessage(action),
          ),
        ),
        loading: () => const AppLoadingIndicator(),
        error: (e, _) => AppErrorMessageView(message: e.toString()),
      ),
      bottomNavigationBar: async.when(
        data: (m) => _BottomCtaBar(
          match: m,
          myUserId: meAsync.asData?.value,
          isSubmitting: _isSubmitting,
          onApply: () => _applyParticipation(m),
          onCancel: () => _runAction(
            () => ref.read(matchRepositoryProvider).cancelMyParticipation(widget.matchId),
            successMessage: '참여를 취소했습니다.',
          ),
          onAcceptOffer: () => _runAction(
            () => ref.read(matchRepositoryProvider).acceptOffer(widget.matchId),
            successMessage: '참석을 수락했습니다.',
          ),
          onRejectOffer: () => _runAction(
            () => ref.read(matchRepositoryProvider).rejectOffer(widget.matchId),
            successMessage: '오퍼를 거절했습니다.',
          ),
        ),
        loading: () => const SizedBox.shrink(),
        error: (_, _) => const SizedBox.shrink(),
      ),
    );
  }
}

final _myUserIdProvider = FutureProvider<int?>((ref) async {
  try {
    final me = await ref.read(profileRepositoryProvider).getMe();
    return me.id;
  } catch (_) {
    return null;
  }
});

class _MatchDetailBody extends StatelessWidget {
  const _MatchDetailBody({
    required this.match,
    required this.matchId,
    required this.myUserId,
    required this.isSubmitting,
    required this.onApply,
    required this.onCancel,
    required this.onAcceptOffer,
    required this.onRejectOffer,
    required this.onManage,
  });

  final MatchDetailDto match;
  final int matchId;
  final int? myUserId;
  final bool isSubmitting;
  final VoidCallback onApply;
  final VoidCallback onCancel;
  final VoidCallback onAcceptOffer;
  final VoidCallback onRejectOffer;
  final void Function(int participationId, String action) onManage;

  @override
  Widget build(BuildContext context) {
    final host = match.host;
    final confirmedWithHost = _confirmedWithHost(match);
    final theme = Theme.of(context);
    final my = match.myParticipation;
    final isHost = myUserId != null && myUserId == match.hostId;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (my != null) ...[
          _MyParticipationCard(
            summary: my,
            serverTimeIso: match.serverTime,
            onAcceptOffer: onAcceptOffer,
            onRejectOffer: onRejectOffer,
            onCancel: onCancel,
            canCancel: match.canCancel == true,
            isSubmitting: isSubmitting,
          ),
          const SizedBox(height: 12),
        ],
        if (host != null)
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(color: Color(0xFFE6EAF2)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  ProfileAvatar(imageUrl: host.profileImg, radius: 24),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          host.nickname,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '⭐ ${(host.ratingScore ?? 0).toStringAsFixed(1)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: const Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (match.imageUrl != null && match.imageUrl!.trim().isNotEmpty) ...[
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              match.imageUrl!,
              height: 190,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                height: 190,
                color: Colors.grey.shade200,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image_outlined),
              ),
            ),
          ),
        ],
        const SizedBox(height: 8),
        Text(
          match.title,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.25,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(color: Color(0xFFE6EAF2)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _DetailInfoRow(
                  icon: Icons.access_time,
                  label: '일시',
                  value: '${match.matchDate} ${match.startTime} (${match.durationMin}분)',
                ),
                const SizedBox(height: 6),
                _DetailInfoRow(
                  icon: Icons.place_outlined,
                  label: '장소',
                  value: '${match.locationName ?? '-'} (${regionCodeLabel(match.regionCode)})',
                ),
                const SizedBox(height: 6),
                _DetailInfoRow(
                  icon: Icons.people_outline,
                  label: '인원',
                  value: '${match.currentPeople}/${match.maxPeople}명',
                ),
                if (match.waitingCount > 0) ...[
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text(
                      '대기 인원: ${match.waitingCount}명',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: const Color(0xFFDC2626),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 6),
                _DetailInfoRow(
                  icon: Icons.paid_outlined,
                  label: '비용',
                  value: _costPolicyLabel(match.costPolicy),
                ),
                const SizedBox(height: 6),
                _DetailInfoRow(
                  icon: Icons.emoji_events_outlined,
                  label: '급수',
                  value: _targetLevelLabel(match.targetLevels),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          '상세 내용',
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        Text(
          match.description,
          style: theme.textTheme.bodyMedium?.copyWith(height: 1.6),
        ),
        const SizedBox(height: 16),
        Text(
          '확정된 참여자 (${confirmedWithHost.length}명)',
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: confirmedWithHost
              .map(
                (p) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProfileAvatar(imageUrl: p.profileImg, radius: 20),
                    const SizedBox(height: 4),
                    Text(
                      p.nickname ?? '-',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: const Color(0xFF334155),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
        if (isHost) ...[
          const SizedBox(height: 10),
          ...match.confirmedParticipants
              .where((p) => p.userId != match.hostId)
              .map(
                (p) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ProfileAvatar(imageUrl: p.profileImg, radius: 16),
                  title: Text(p.nickname ?? '-'),
                  subtitle: Text('⭐ ${(p.ratingScore ?? 0).toStringAsFixed(1)}'),
                  trailing: OutlinedButton(
                    onPressed: isSubmitting || p.participationId == null
                        ? null
                        : () => onManage(p.participationId!, 'KICK'),
                    child: const Text('추방'),
                  ),
                ),
              )
              .toList(),
        ],
        if (isHost) ...[
          const SizedBox(height: 20),
          _HostApplicationsSection(
            matchId: matchId,
            isSubmitting: isSubmitting,
            onManage: onManage,
          ),
        ],
      ],
    );
  }
}

class _HostApplicationsSection extends ConsumerWidget {
  const _HostApplicationsSection({
    required this.matchId,
    required this.isSubmitting,
    required this.onManage,
  });

  final int matchId;
  final bool isSubmitting;
  final void Function(int participationId, String action) onManage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(applicationsProvider(matchId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '신청 관리',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        async.when(
          data: (items) {
            if (items.isEmpty) {
              return const Text('현재 신청자가 없습니다.');
            }
            return Column(
              children: items
                  .map(
                    (e) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ProfileAvatar(imageUrl: e.profileImg, radius: 16),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    e.nickname,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(_participationStatusLabel(e.status)),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '${e.level ?? '-'} / ${e.interestRegions.map(regionCodeLabel).join(', ')}',
                            ),
                            if (e.applyMessage != null &&
                                e.applyMessage!.trim().isNotEmpty) ...[
                              const SizedBox(height: 4),
                              Text('멘트: ${e.applyMessage}'),
                            ],
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              children: [
                                if (e.status != 'ACCEPTED')
                                  OutlinedButton(
                                    onPressed: isSubmitting
                                        ? null
                                        : () => onManage(e.participationId, 'ACCEPT'),
                                    child: const Text('수락'),
                                  ),
                                if (e.status != 'REJECTED' && e.status != 'CANCELLED')
                                  OutlinedButton(
                                    onPressed: isSubmitting
                                        ? null
                                        : () => onManage(e.participationId, 'REJECT'),
                                    child: const Text('거절'),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          },
          loading: () => const AppLoadingIndicator(),
          error: (e, _) => Text(_errorMessageForUser(e)),
        ),
      ],
    );
  }
}

class _MyParticipationCard extends StatelessWidget {
  const _MyParticipationCard({
    required this.summary,
    required this.serverTimeIso,
    required this.onAcceptOffer,
    required this.onRejectOffer,
    required this.onCancel,
    required this.canCancel,
    required this.isSubmitting,
  });

  final MyParticipationSummaryDto summary;
  final String? serverTimeIso;
  final VoidCallback onAcceptOffer;
  final VoidCallback onRejectOffer;
  final VoidCallback onCancel;
  final bool canCancel;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    final offerText = _offerCountdownText(summary.offerExpiresAt, serverTimeIso);
    final isUrgent = _remainingOfferSeconds(summary.offerExpiresAt, serverTimeIso) != null &&
        _remainingOfferSeconds(summary.offerExpiresAt, serverTimeIso)! < 60;
    return Card(
      color: const Color(0xFFF8FAFC),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '내 신청 상태: ${_participationStatusLabel(summary.status)}',
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            if (summary.status == 'WAITING') Text('대기 순번: ${summary.queueOrder}번'),
            if (offerText != null)
              Text(
                offerText,
                style: TextStyle(
                  color: isUrgent ? const Color(0xFFDC2626) : const Color(0xFF334155),
                  fontWeight: isUrgent ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            if (summary.applyMessage != null && summary.applyMessage!.trim().isNotEmpty)
              Text('신청 멘트: ${summary.applyMessage}'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                if (summary.status == 'RESERVED')
                  FilledButton(
                    onPressed: isSubmitting ? null : onAcceptOffer,
                    child: const Text('오퍼 수락'),
                  ),
                if (summary.status == 'RESERVED')
                  OutlinedButton(
                    onPressed: isSubmitting ? null : onRejectOffer,
                    child: const Text('오퍼 거절'),
                  ),
                if (canCancel && summary.status != 'CANCELLED')
                  OutlinedButton(
                    onPressed: isSubmitting ? null : onCancel,
                    child: const Text('참여 취소'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomCtaBar extends StatelessWidget {
  const _BottomCtaBar({
    required this.match,
    required this.myUserId,
    required this.isSubmitting,
    required this.onApply,
    required this.onCancel,
    required this.onAcceptOffer,
    required this.onRejectOffer,
  });

  final MatchDetailDto match;
  final int? myUserId;
  final bool isSubmitting;
  final VoidCallback onApply;
  final VoidCallback onCancel;
  final VoidCallback onAcceptOffer;
  final VoidCallback onRejectOffer;

  @override
  Widget build(BuildContext context) {
    final isHost = myUserId != null && myUserId == match.hostId;
    if (isHost) return const SizedBox.shrink();
    final my = match.myParticipation;
    if (my != null && my.status == 'RESERVED') {
      return SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 14),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: isSubmitting ? null : onRejectOffer,
                child: const Text('거절'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton(
                onPressed: isSubmitting ? null : onAcceptOffer,
                child: const Text('수락'),
              ),
            ),
          ],
        ),
      );
    }
    if (my != null && match.canCancel == true) {
      return SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 14),
        child: SizedBox(
          height: 50,
          child: FilledButton(
            onPressed: isSubmitting ? null : onCancel,
            child: const Text('참여 취소'),
          ),
        ),
      );
    }
    final canApply = match.canApply == true || my?.status == 'REJECTED';
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 8, 16, 14),
      child: SizedBox(
        height: 50,
        child: FilledButton(
          onPressed: isSubmitting || !canApply ? null : onApply,
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            my?.status == 'REJECTED' ? '다시 신청하기' : _ctaLabel(match),
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class _DetailInfoRow extends StatelessWidget {
  const _DetailInfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: const Color(0xFF64748B)),
        const SizedBox(width: 8),
        Text(
          '$label:',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: const Color(0xFF64748B),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: const Color(0xFF334155),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

String _ctaLabel(MatchDetailDto m) {
  if (m.currentPeople >= m.maxPeople) return '대기 신청하기';
  if (m.canApply == false) return '신청 불가';
  return '참여 신청하기';
}

List<MatchParticipantDto> _confirmedWithHost(MatchDetailDto match) {
  final list = <MatchParticipantDto>[];
  final host = match.host;
  if (host != null) {
    list.add(
      MatchParticipantDto(
        userId: host.id,
        nickname: host.nickname,
        profileImg: host.profileImg,
        ratingScore: host.ratingScore,
      ),
    );
  }
  final others = match.confirmedParticipants.where((p) => p.userId != match.hostId);
  list.addAll(others);
  return list;
}

String _costPolicyLabel(CostPolicy costPolicy) {
  return switch (costPolicy) {
    CostPolicy.splitEqual => '1/N 정산',
    CostPolicy.hostPays => '방장 부담',
    CostPolicy.guestPays => '게스트 부담',
  };
}

String _targetLevelLabel(String? raw) {
  if (raw == null || raw.trim().isEmpty) return '-';
  const order = ['A', 'B', 'C', 'D', 'BEGINNER'];
  final tokens = raw
      .split(',')
      .map((e) => e.trim().toUpperCase())
      .where(order.contains)
      .toSet()
      .toList()
    ..sort((a, b) => order.indexOf(a).compareTo(order.indexOf(b)));
  return tokens.map((e) => e == 'BEGINNER' ? '초심' : e).join(', ');
}

String _participationStatusLabel(String status) {
  return switch (status) {
    'PENDING' => '수락 대기',
    'ACCEPTED' => '참여 확정',
    'REJECTED' => '거절됨',
    'WAITING' => '대기열',
    'RESERVED' => '예약 오퍼 도착',
    'CANCELLED' => '취소됨',
    _ => status,
  };
}

String _hostActionSuccessMessage(String action) {
  return switch (action) {
    'ACCEPT' => '신청을 수락했습니다.',
    'REJECT' => '신청을 거절했습니다.',
    'KICK' => '참여자를 추방했습니다.',
    _ => '처리가 완료되었습니다.',
  };
}

String _errorMessageForUser(Object e) {
  final code = _businessCodeOf(e);
  if (code == 'FORBIDDEN') return '권한이 없습니다.';
  if (code == 'BAD_REQUEST') return '입력값 또는 요청 상태를 확인해주세요.';
  if (code == 'OFFER_EXPIRED') return '오퍼가 만료되어 상태를 새로고침합니다.';
  if (code == 'MATCH_FULL') return '정원이 가득 찼습니다.';
  if (code == 'INVALID_STATUS') return '현재 상태에서 처리할 수 없는 요청입니다.';
  if (code == 'MATCH_NOT_RECRUITING') return '모집 중인 매칭만 처리할 수 있습니다.';
  if (e is DioException && e.error is ApiException) {
    return (e.error! as ApiException).message ?? '요청에 실패했습니다.';
  }
  if (e is ApiException) return e.message ?? '요청에 실패했습니다.';
  return '요청에 실패했습니다.';
}

String? _businessCodeOf(Object e) {
  if (e is DioException && e.error is ApiException) {
    return (e.error! as ApiException).businessCode;
  }
  if (e is ApiException) return e.businessCode;
  if (e is Exception && e.toString().contains('ApiException')) {
    final text = e.toString();
    final match = RegExp(r'code=([^,\)]+)').firstMatch(text);
    return match?.group(1);
  }
  return null;
}

String? _offerCountdownText(String? offerExpiresAt, String? serverTimeIso) {
  final remaining = _remainingOfferSeconds(offerExpiresAt, serverTimeIso);
  if (remaining == null) return null;
  if (remaining <= 0) return '오퍼 만료';
  final min = remaining ~/ 60;
  final sec = remaining % 60;
  final mm = min.toString().padLeft(2, '0');
  final ss = sec.toString().padLeft(2, '0');
  return remaining < 60 ? '곧 만료 ($ss초 남음)' : '오퍼 만료까지 $mm:$ss';
}

int? _remainingOfferSeconds(String? offerExpiresAt, String? serverTimeIso) {
  final expire = DateTime.tryParse(offerExpiresAt ?? '');
  if (expire == null) return null;
  final serverTime = DateTime.tryParse(serverTimeIso ?? '');
  final now = DateTime.now();
  final offset = serverTime == null ? Duration.zero : serverTime.difference(now);
  final adjustedNow = now.add(offset);
  return expire.difference(adjustedNow).inSeconds;
}
