import 'package:flutter/material.dart';

import '../../../../shared/widgets/korea_region_presets.dart';
import '../../../auth/domain/user_level.dart';
import '../../data/dto/user_profile_dto.dart';

class ProfileFieldsSection extends StatelessWidget {
  const ProfileFieldsSection({
    super.key,
    required this.profile,
  });

  final UserProfileDto profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final level = profile.levelEnum;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('닉네임', style: theme.textTheme.labelMedium),
        Text(profile.nickname, style: theme.textTheme.titleMedium),
        const SizedBox(height: 12),
        Text('급수', style: theme.textTheme.labelMedium),
        Text(level?.label ?? '-', style: theme.textTheme.bodyLarge),
        const SizedBox(height: 12),
        Text('관심 지역', style: theme.textTheme.labelMedium),
        Text(regionCodeLabel(profile.interestLoc1),
            style: theme.textTheme.bodyLarge),
        if (profile.interestLoc2 != null && profile.interestLoc2!.isNotEmpty)
          Text(regionCodeLabel(profile.interestLoc2),
              style: theme.textTheme.bodyLarge),
        const SizedBox(height: 12),
        Text('라켓', style: theme.textTheme.labelMedium),
        Text(profile.racketInfo?.isNotEmpty == true ? profile.racketInfo! : '-',
            style: theme.textTheme.bodyLarge),
        const SizedBox(height: 12),
        Text('플레이 스타일', style: theme.textTheme.labelMedium),
        Text(profile.playStyle?.isNotEmpty == true ? profile.playStyle! : '-',
            style: theme.textTheme.bodyLarge),
      ],
    );
  }

}
