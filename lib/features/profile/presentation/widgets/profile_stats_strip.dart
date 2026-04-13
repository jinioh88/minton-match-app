import 'package:flutter/material.dart';

import '../../data/dto/user_profile_dto.dart';

class ProfileStatsStrip extends StatelessWidget {
  const ProfileStatsStrip({
    super.key,
    required this.profile,
    this.showMatchCounts = true,
    this.emphasizeTrust = false,
  });

  final UserProfileDto profile;
  final bool showMatchCounts;
  final bool emphasizeTrust;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rating = profile.ratingScore;
    final penalty = profile.penaltyCount ?? 0;
    final hosted = profile.hostedMatchCount;
    final joined = profile.participatedMatchCount;

    final trustStyle = emphasizeTrust
        ? theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          )
        : theme.textTheme.bodyLarge;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (emphasizeTrust) ...[
              Text('매너·신뢰', style: theme.textTheme.titleSmall),
              const SizedBox(height: 8),
            ],
            Row(
              children: [
                Expanded(
                  child: _StatTile(
                    label: '매너 점수',
                    value: rating != null ? rating.toStringAsFixed(1) : '-',
                    textStyle: trustStyle,
                  ),
                ),
                Expanded(
                  child: _StatTile(
                    label: '페널티',
                    value: '$penalty회',
                    textStyle: emphasizeTrust ? trustStyle : null,
                  ),
                ),
              ],
            ),
            if (showMatchCounts &&
                (hosted != null || joined != null)) ...[
              const Divider(height: 24),
              Row(
                children: [
                  if (hosted != null)
                    Expanded(
                      child: _StatTile(
                        label: '방장 매칭',
                        value: '$hosted회',
                      ),
                    ),
                  if (joined != null)
                    Expanded(
                      child: _StatTile(
                        label: '참여 매칭',
                        value: '$joined회',
                      ),
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({
    required this.label,
    required this.value,
    this.textStyle,
  });

  final String label;
  final String value;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.textTheme.labelMedium),
        const SizedBox(height: 4),
        Text(
          value,
          style: textStyle ?? theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
