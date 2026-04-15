import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import 'user_profile_by_id_provider.dart';
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
            const SizedBox(height: 24),
            ProfileActivitySummarySection(profile: p),
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
          ],
        ),
        loading: () => const AppLoadingIndicator(),
        error: (e, _) => AppErrorMessageView(message: e.toString()),
      ),
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
