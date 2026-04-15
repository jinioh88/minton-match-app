import 'package:flutter/material.dart';

import '../../../auth/domain/user_level.dart';
import '../../data/dto/user_profile_dto.dart';
import 'profile_avatar.dart';

class ProfileOverviewHeader extends StatelessWidget {
  const ProfileOverviewHeader({
    super.key,
    required this.profile,
    this.joinedAtText,
    this.showCameraBadge = false,
    this.onCameraTap,
    this.tags = const <String>[],
  });

  final UserProfileDto profile;
  final String? joinedAtText;
  final bool showCameraBadge;
  final VoidCallback? onCameraTap;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    final level = profile.levelEnum?.label ?? '-';
    final rating = (profile.ratingScore ?? 0).toStringAsFixed(1);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ProfileAvatar(imageUrl: profile.profileImg, radius: 38),
            if (showCameraBadge)
              Positioned(
                right: -2,
                bottom: -2,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onCameraTap,
                    customBorder: const CircleBorder(),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.camera_alt_outlined, size: 16),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      profile.nickname,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1ABC9C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      level,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              if (joinedAtText != null) ...[
                const SizedBox(height: 4),
                Text(joinedAtText!, style: Theme.of(context).textTheme.bodySmall),
              ],
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 18),
                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 18),
                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 18),
                  const Icon(Icons.star, color: Color(0xFFFFC107), size: 18),
                  const Icon(Icons.star_border, color: Color(0xFFFFC107), size: 18),
                  const SizedBox(width: 6),
                  Text(
                    '$rating / 5.0',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (tags.isNotEmpty)
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: tags.map((e) => _TagChip(label: e)).toList(),
                )
              else
                const _EmptyTagChip(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileActivitySummarySection extends StatelessWidget {
  const ProfileActivitySummarySection({
    super.key,
    required this.profile,
  });

  final UserProfileDto profile;

  @override
  Widget build(BuildContext context) {
    final hosted = profile.hostedMatchCount ?? 0;
    final joined = profile.participatedMatchCount ?? 0;
    final penalty = profile.penaltyCount ?? 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('활동 요약', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _SummaryCard(
                value: '$hosted',
                label: '내가 만든 매칭',
                valueColor: const Color(0xFF10B981),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _SummaryCard(
                value: '$joined',
                label: '참여한 매칭',
                valueColor: const Color(0xFF10B981),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _SummaryCard(
                value: '$penalty',
                label: '패널티',
                valueColor: const Color(0xFFE53935),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileDetailsSection extends StatelessWidget {
  const ProfileDetailsSection({
    super.key,
    required this.title,
    required this.loc1Label,
    required this.loc2Label,
    required this.racketLabel,
    this.playStyleLabel,
    this.onEdit,
  });

  final String title;
  final String loc1Label;
  final String loc2Label;
  final String racketLabel;
  final String? playStyleLabel;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    final playStyle = playStyleLabel?.trim();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(height: 1),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            if (onEdit != null) TextButton(onPressed: onEdit, child: const Text('수정')),
          ],
        ),
        const SizedBox(height: 8),
        Text('관심 지역', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(child: _ReadonlyField(value: loc1Label)),
            const SizedBox(width: 10),
            Expanded(child: _ReadonlyField(value: loc2Label)),
          ],
        ),
        const SizedBox(height: 14),
        Text('나의 장비', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        _ReadonlyField(value: racketLabel),
        const SizedBox(height: 14),
        Text('플레이 스타일', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        if (playStyle == null || playStyle.isEmpty)
          const _ReadonlyField(value: '-')
        else
          _StyleChip(label: playStyle),
      ],
    );
  }
}

class _TagChip extends StatelessWidget {
  const _TagChip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFE8FFF7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: const Color(0xFF14A37F),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _EmptyTagChip extends StatelessWidget {
  const _EmptyTagChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        '#태그없음',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.value,
    required this.label,
    required this.valueColor,
  });

  final String value;
  final String label;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: valueColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(label, style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}

class _ReadonlyField extends StatelessWidget {
  const _ReadonlyField({required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}

class _StyleChip extends StatelessWidget {
  const _StyleChip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF10B981),
        border: Border.all(color: const Color(0xFF10B981)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
