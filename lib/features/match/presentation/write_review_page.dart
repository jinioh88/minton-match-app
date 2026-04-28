import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/network/api_exception.dart';
import '../data/dto/match_view_dto.dart';
import '../data/dto/review_dto.dart';
import '../data/match_repository.dart';
import 'match_providers.dart';

class WriteReviewPage extends ConsumerStatefulWidget {
  const WriteReviewPage({
    super.key,
    required this.matchId,
    required this.revieweeId,
  });

  final int matchId;
  final int revieweeId;

  @override
  ConsumerState<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends ConsumerState<WriteReviewPage> {
  final _detailController = TextEditingController();
  String? _sentiment;
  double _scoreSlider = 4;
  final Set<String> _hashtags = {};
  bool _submitting = false;

  static const _sentimentRows = <(String code, String label)>[
    ('NEGATIVE', '아쉬워요'),
    ('NEUTRAL', '보통이에요'),
    ('POSITIVE', '좋았어요'),
  ];

  static const _hashtagOptions = <(String code, String label)>[
    ('PASSION', '열정'),
    ('MANNER', '매너'),
    ('KINDNESS', '친절'),
    ('EXPERT', '실력'),
    ('PUNCTUAL', '시간약속'),
    ('TEAM_PLAY', '팀플레이'),
  ];

  @override
  void dispose() {
    _detailController.dispose();
    super.dispose();
  }

  int get _score => _scoreSlider.round().clamp(1, 5);

  Future<void> _submit(MatchDetailDto match, String revieweeName) async {
    final sentiment = _sentiment;
    if (sentiment == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('전체적인 만족도를 선택해주세요.')),
      );
      return;
    }
    if (_submitting) return;
    setState(() => _submitting = true);
    try {
      final detailText = _detailController.text.trim();
      await ref.read(matchRepositoryProvider).createReview(
            widget.matchId,
            CreateReviewRequestDto(
              revieweeId: widget.revieweeId,
              sentiment: sentiment,
              score: _score,
              hashtags: _hashtags.toList(),
              detail: detailText.isEmpty ? null : detailText,
            ),
          );
      ref.invalidate(matchDetailProvider(widget.matchId));
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$revieweeName님에게 후기를 남겼습니다.')),
      );
      context.pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_reviewErrorMessage(e))),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  void _toggleHashtag(String code) {
    setState(() {
      if (_hashtags.contains(code)) {
        _hashtags.remove(code);
      } else {
        if (_hashtags.length >= 10) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('해시태그는 최대 10개까지 선택할 수 있습니다.')),
          );
          return;
        }
        _hashtags.add(code);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(matchDetailProvider(widget.matchId));
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('후기 작성')),
      body: async.when(
        data: (match) {
          if (match.status != 'FINISHED' || !match.reviewPendingUserIds.contains(widget.revieweeId)) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이 매칭에서는 해당 참여자에게 후기를 남길 수 없습니다.',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    FilledButton.tonal(
                      onPressed: () => context.pop(),
                      child: const Text('돌아가기'),
                    ),
                  ],
                ),
              ),
            );
          }
          final name = _nicknameForReviewee(match, widget.revieweeId);
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text(
                      '$name님에 대한 후기',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      match.title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF64748B),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '만족도',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SegmentedButton<String>(
                      segments: [
                        for (final row in _sentimentRows)
                          ButtonSegment<String>(
                            value: row.$1,
                            label: Text(row.$2),
                          ),
                      ],
                      emptySelectionAllowed: true,
                      selected: _sentiment != null ? {_sentiment!} : <String>{},
                      onSelectionChanged: (s) {
                        setState(() => _sentiment = s.isEmpty ? null : s.first);
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '별점 ($_score점)',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Slider(
                      value: _scoreSlider,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      label: '$_score점',
                      onChanged: (v) => setState(() => _scoreSlider = v),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '해시태그 (최대 10개)',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final row in _hashtagOptions)
                          FilterChip(
                            label: Text(row.$2),
                            selected: _hashtags.contains(row.$1),
                            onSelected: (_) => _toggleHashtag(row.$1),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '상세 의견 (선택)',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _detailController,
                      maxLines: 5,
                      maxLength: 2000,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        hintText: '함께한 경험을 남겨주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                minimum: const EdgeInsets.fromLTRB(16, 8, 16, 14),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: _submitting ? null : () => _submit(match, name),
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: _submitting
                        ? const SizedBox(
                            width: 22,
                            height: 22,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text(
                            '후기 등록',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(e.toString()),
            )),
      ),
    );
  }
}

String _nicknameForReviewee(MatchDetailDto match, int userId) {
  final host = match.host;
  if (host != null && host.id == userId) return host.nickname;
  for (final p in match.confirmedParticipants) {
    if (p.userId == userId) return p.nickname ?? '참여자';
  }
  return '참여자';
}

String _reviewErrorMessage(Object e) {
  final code = _businessCodeOf(e);
  return switch (code) {
    'REVIEW_NOT_ALLOWED' => '후기를 남길 수 있는 상태가 아닙니다.',
    'SELF_REVIEW_NOT_ALLOWED' => '본인에게는 후기를 남길 수 없습니다.',
    'DUPLICATE_REVIEW' => '이미 후기를 작성했습니다.',
    'USER_SUSPENDED' => '계정 정지 기간에는 후기를 작성할 수 없습니다.',
    'USER_BANNED' => '이용이 제한된 계정입니다.',
    'BAD_REQUEST' => '입력 내용을 확인해주세요.',
    _ => null,
  } ??
      (e is DioException && e.error is ApiException
          ? (e.error! as ApiException).message
          : null) ??
      (e is ApiException ? e.message : null) ??
      '후기 등록에 실패했습니다.';
}

String? _businessCodeOf(Object e) {
  if (e is DioException && e.error is ApiException) {
    return (e.error! as ApiException).businessCode;
  }
  if (e is ApiException) return e.businessCode;
  return null;
}
