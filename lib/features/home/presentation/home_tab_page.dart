import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../profile/data/profile_repository.dart';
import '../../profile/data/dto/user_profile_dto.dart';
import '../../match/data/dto/match_view_dto.dart';
import '../../match/presentation/match_providers.dart';

class HomeTabPage extends ConsumerStatefulWidget {
  const HomeTabPage({super.key});

  @override
  ConsumerState<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends ConsumerState<HomeTabPage> {
  String? _regionCode;
  DateTime _selectedDate = DateTime.now();
  String? _selectedLevel;
  bool _recruitingOnly = true;

  @override
  Widget build(BuildContext context) {
    final meAsync = ref.watch(_myProfileProvider);
    final availableRegionCodes = _interestRegionCodes(meAsync.asData?.value);
    _regionCode ??= availableRegionCodes.isNotEmpty
        ? availableRegionCodes.first
        : null;

    final query = MatchListQuery(
      regionCode: _regionCode,
      dateFrom: _formatDate(_selectedDate),
      dateTo: _formatDate(_selectedDate),
      level: _selectedLevel,
    );
    final async = ref.watch(matchListProvider(query));

    return Scaffold(
      appBar: AppBar(
        title: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _regionCode,
            items: availableRegionCodes
                .map(
                  (code) => DropdownMenuItem<String>(
                    value: code,
                    child: Text(regionCodeLabel(code)),
                  ),
                )
                .toList(),
            onChanged: (v) => setState(() => _regionCode = v),
          ),
        ),
      ),
      body: Column(
        children: [
          _FilterBar(
            selectedDate: _selectedDate,
            selectedLevel: _selectedLevel,
            recruitingOnly: _recruitingOnly,
            onDateChange: (d) => setState(() => _selectedDate = d),
            onLevelSelect: (lv) => setState(() => _selectedLevel = lv),
            onRecruitingOnly: (v) => setState(() => _recruitingOnly = v),
          ),
          Expanded(
            child: async.when(
              data: (page) {
                final items = _recruitingOnly
                    ? page.content.where((e) => e.status == 'RECRUITING').toList()
                    : page.content;
                if (items.isEmpty) {
                  return const Center(
                    child: Text('해당 조건의 매칭이 없습니다.\n새로운 매칭을 만들어보세요!'),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async => ref.refresh(matchListProvider(query).future),
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 80),
                    itemCount: items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 8),
                    itemBuilder: (context, i) {
                      final item = items[i];
                      return _MatchCard(
                        item: item,
                        onTap: () => context.push(AppRoutes.matchDetail(item.matchId)),
                      );
                    },
                  ),
                );
              },
              loading: () => const AppLoadingIndicator(),
              error: (e, _) => AppErrorMessageView(message: e.toString()),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.createMatch),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _FilterBar extends StatelessWidget {
  const _FilterBar({
    required this.selectedDate,
    required this.selectedLevel,
    required this.recruitingOnly,
    required this.onDateChange,
    required this.onLevelSelect,
    required this.onRecruitingOnly,
  });

  final DateTime selectedDate;
  final String? selectedLevel;
  final bool recruitingOnly;
  final ValueChanged<DateTime> onDateChange;
  final ValueChanged<String?> onLevelSelect;
  final ValueChanged<bool> onRecruitingOnly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Column(
        children: [
          Row(
            children: [
              ChoiceChip(
                label: const Text('오늘'),
                selected: _sameDate(selectedDate, DateTime.now()),
                onSelected: (_) => onDateChange(DateTime.now()),
              ),
              const SizedBox(width: 8),
              OutlinedButton.icon(
                onPressed: () async {
                  final now = DateTime.now();
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(now.year, now.month, now.day),
                    lastDate: now.add(const Duration(days: 14)),
                  );
                  if (picked != null) onDateChange(picked);
                },
                icon: const Icon(Icons.calendar_today_outlined, size: 16),
                label: Text('${selectedDate.month}/${selectedDate.day}'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _levelChoices
                        .map(
                          (level) => Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: FilterChip(
                              label: Text(level.label),
                              selected: selectedLevel == level.value,
                              onSelected: (_) => onLevelSelect(level.value),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text('모집중만'),
                  Switch(
                    value: recruitingOnly,
                    onChanged: onRecruitingOnly,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MatchCard extends StatelessWidget {
  const _MatchCard({required this.item, required this.onTap});

  final MatchListItemDto item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFE6EAF2)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D0F172A),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _StatusBadge(status: item.status),
                const Spacer(),
                Wrap(
                  spacing: 4,
                  children: _sortedLevels(item.targetLevels)
                      .map((level) => _LevelBadge(level: level))
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              item.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                height: 1.25,
              ),
            ),
            const SizedBox(height: 10),
            if (item.imageUrl != null && item.imageUrl!.trim().isNotEmpty) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  item.imageUrl!,
                  height: 148,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    height: 148,
                    color: Colors.grey.shade200,
                    alignment: Alignment.center,
                    child: const Icon(Icons.broken_image_outlined),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
            _InfoRow(icon: Icons.access_time, text: item.startTime),
            const SizedBox(height: 4),
            _InfoRow(icon: Icons.place_outlined, text: item.locationName ?? '-'),
            const SizedBox(height: 4),
            _InfoRow(
              icon: Icons.people_outline,
              text: '${item.currentPeople}/${item.maxPeople}명',
            ),
            const SizedBox(height: 10),
            Text(
              '${item.hostNickname ?? '-'}  ⭐ ${(item.hostRatingScore ?? 0).toStringAsFixed(1)}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF64748B),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color(0xFF64748B)),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: const Color(0xFF334155),
            ),
          ),
        ),
      ],
    );
  }
}

class _LevelChoice {
  const _LevelChoice({required this.value, required this.label});

  final String? value;
  final String label;
}

class _LevelBadge extends StatelessWidget {
  const _LevelBadge({required this.level});

  final String level;

  @override
  Widget build(BuildContext context) {
    final color = _levelColor(level);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        level == 'BEGINNER' ? '초심' : level,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

const _levelChoices = <_LevelChoice>[
  _LevelChoice(value: null, label: '전체'),
  _LevelChoice(value: 'A', label: 'A'),
  _LevelChoice(value: 'B', label: 'B'),
  _LevelChoice(value: 'C', label: 'C'),
  _LevelChoice(value: 'D', label: 'D'),
  _LevelChoice(value: 'BEGINNER', label: '초심'),
];

final _myProfileProvider = FutureProvider<UserProfileDto>((ref) async {
  return ref.read(profileRepositoryProvider).getMe();
});

List<String> _interestRegionCodes(UserProfileDto? profile) {
  if (profile == null) return [];
  final first = profile.interestLoc1?.trim();
  final second = profile.interestLoc2?.trim();
  final values = <String>[
    if (first != null && first.isNotEmpty) first,
    if (second != null && second.isNotEmpty) second,
  ];
  return values.toSet().toList();
}

List<String> _sortedLevels(String? raw) {
  if (raw == null || raw.trim().isEmpty) return const <String>[];
  const order = ['A', 'B', 'C', 'D', 'BEGINNER'];
  final tokens = raw
      .split(',')
      .map((e) => e.trim().toUpperCase())
      .where((e) => order.contains(e))
      .toSet()
      .toList();
  tokens.sort((a, b) => order.indexOf(a).compareTo(order.indexOf(b)));
  return tokens;
}

Color _levelColor(String level) {
  return switch (level) {
    'A' => const Color(0xFFEF4444),
    'B' => const Color(0xFFF97316),
    'C' => const Color(0xFF10B981),
    'D' => const Color(0xFF3B82F6),
    'BEGINNER' => const Color(0xFF8B5CF6),
    _ => Colors.grey,
  };
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      'RECRUITING' => Colors.green,
      'CLOSED' => Colors.orange,
      _ => Colors.grey,
    };
    final label = switch (status) {
      'RECRUITING' => '모집중',
      'CLOSED' => '마감',
      'FINISHED' => '종료',
      'CANCELLED' => '취소',
      _ => status,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 11,
        ),
      ),
    );
  }
}

String _formatDate(DateTime date) {
  final y = date.year.toString().padLeft(4, '0');
  final m = date.month.toString().padLeft(2, '0');
  final d = date.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}

bool _sameDate(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;
