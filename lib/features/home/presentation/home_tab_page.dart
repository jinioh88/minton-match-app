import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../chat/presentation/chat_providers.dart';
import '../../match/data/match_repository.dart';
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
  _TimeSlot? _selectedTimeSlot;
  _GenderOption? _selectedGender;
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
    final async = ref.watch(_matchListForUiProvider(query));

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F172A),
        elevation: 0,
        titleSpacing: 12,
        title: _RegionSelector(
          regionCodes: availableRegionCodes,
          selectedCode: _regionCode,
          onSelect: (code) => setState(() => _regionCode = code),
        ),
        actions: const [_NotificationButton()],
      ),
      body: Column(
        children: [
          _FilterBar(
            selectedDate: _selectedDate,
            selectedLevel: _selectedLevel,
            selectedTimeSlot: _selectedTimeSlot,
            selectedGender: _selectedGender,
            recruitingOnly: _recruitingOnly,
            onDateChange: (d) => setState(() => _selectedDate = d),
            onLevelSelect: (lv) => setState(() => _selectedLevel = lv),
            onTimeSlotSelect: (slot) => setState(() => _selectedTimeSlot = slot),
            onGenderSelect: (gender) => setState(() => _selectedGender = gender),
            onRecruitingOnly: (v) => setState(() => _recruitingOnly = v),
          ),
          Expanded(
            child: async.when(
              data: (page) {
                var items = page.content.toList();
                if (_recruitingOnly) {
                  items = items.where((e) => e.status == 'RECRUITING').toList();
                }
                if (_selectedTimeSlot != null) {
                  items = items
                      .where(
                        (e) => _matchesTimeSlot(e.startTime, _selectedTimeSlot!),
                      )
                      .toList();
                }
                if (items.isEmpty) {
                  return const Center(
                    child: Text('해당 조건의 매칭이 없습니다.\n새로운 매칭을 만들어보세요!'),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async =>
                      ref.refresh(_matchListForUiProvider(query).future),
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 88),
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
    required this.selectedTimeSlot,
    required this.selectedGender,
    required this.recruitingOnly,
    required this.onDateChange,
    required this.onLevelSelect,
    required this.onTimeSlotSelect,
    required this.onGenderSelect,
    required this.onRecruitingOnly,
  });

  final DateTime selectedDate;
  final String? selectedLevel;
  final _TimeSlot? selectedTimeSlot;
  final _GenderOption? selectedGender;
  final bool recruitingOnly;
  final ValueChanged<DateTime> onDateChange;
  final ValueChanged<String?> onLevelSelect;
  final ValueChanged<_TimeSlot?> onTimeSlotSelect;
  final ValueChanged<_GenderOption?> onGenderSelect;
  final ValueChanged<bool> onRecruitingOnly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 6),
      child: Column(
        children: [
          Row(
            children: [
              ChoiceChip(
                label: const Text('오늘'),
                selected: _sameDate(selectedDate, DateTime.now()),
                onSelected: (_) => onDateChange(DateTime.now()),
                labelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                selectedColor: const Color(0xFF3B5BFF),
                backgroundColor: Colors.white,
                side: const BorderSide(color: Color(0xFFE5E7EB)),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
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
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Color(0xFFE5E7EB)),
                  minimumSize: const Size(36, 32),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                child: const Icon(Icons.calendar_today_outlined, size: 15),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _QuickFilterChip(
                        label: selectedLevel == null ? '급수 선택' : _levelLabel(selectedLevel),
                        onTap: () => _showLevelPicker(context, selectedLevel, onLevelSelect),
                      ),
                      const SizedBox(width: 6),
                      _QuickFilterChip(
                        label: selectedTimeSlot?.label ?? '시간대',
                        onTap: () => _showTimeSlotPicker(
                          context,
                          selectedTimeSlot,
                          onTimeSlotSelect,
                        ),
                      ),
                      const SizedBox(width: 6),
                      _QuickFilterChip(
                        label: selectedGender?.label ?? '성별',
                        onTap: () => _showGenderPicker(
                          context,
                          selectedGender,
                          onGenderSelect,
                        ),
                      ),
                      const SizedBox(width: 6),
                      _QuickFilterChip(
                        label: '모집 중만 보기',
                        selected: recruitingOnly,
                        onTap: () => onRecruitingOnly(!recruitingOnly),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RegionSelector extends StatelessWidget {
  const _RegionSelector({
    required this.regionCodes,
    required this.selectedCode,
    required this.onSelect,
  });

  final List<String> regionCodes;
  final String? selectedCode;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    if (regionCodes.isEmpty) {
      return const Text(
        '지역 설정 필요',
        style: TextStyle(
          color: Color(0xFF0F172A),
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      );
    }
    if (regionCodes.length == 1) {
      return Text(
        regionCodeLabel(regionCodes.first),
        style: const TextStyle(
          color: Color(0xFF0F172A),
          fontWeight: FontWeight.w800,
          fontSize: 18,
        ),
      );
    }

    return Container(
      height: 34,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: regionCodes.take(2).map((code) {
          final selected = code == selectedCode;
          return GestureDetector(
            onTap: () => onSelect(code),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOut,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(14),
                boxShadow: selected
                    ? const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 6,
                          offset: Offset(0, 1),
                        ),
                      ]
                    : null,
              ),
              child: Text(
                regionCodeLabel(code),
                style: TextStyle(
                  color: selected
                      ? const Color(0xFF0F172A)
                      : const Color(0xFF64748B),
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

Future<void> _showLevelPicker(
  BuildContext context,
  String? selectedLevel,
  ValueChanged<String?> onLevelSelect,
) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (ctx) => SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: _levelChoices
            .map(
              (choice) => ListTile(
                title: Text(choice.label),
                trailing: selectedLevel == choice.value
                    ? const Icon(Icons.check, color: Color(0xFF3B5BFF))
                    : null,
                onTap: () {
                  onLevelSelect(choice.value);
                  Navigator.of(ctx).pop();
                },
              ),
            )
            .toList(),
      ),
    ),
  );
}

Future<void> _showTimeSlotPicker(
  BuildContext context,
  _TimeSlot? selected,
  ValueChanged<_TimeSlot?> onSelect,
) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (ctx) => SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text('전체'),
            trailing: selected == null
                ? const Icon(Icons.check, color: Color(0xFF3B5BFF))
                : null,
            onTap: () {
              onSelect(null);
              Navigator.of(ctx).pop();
            },
          ),
          ..._TimeSlot.values.map(
            (slot) => ListTile(
              title: Text(slot.label),
              trailing: selected == slot
                  ? const Icon(Icons.check, color: Color(0xFF3B5BFF))
                  : null,
              onTap: () {
                onSelect(slot);
                Navigator.of(ctx).pop();
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Future<void> _showGenderPicker(
  BuildContext context,
  _GenderOption? selected,
  ValueChanged<_GenderOption?> onSelect,
) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (ctx) => SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text('상관없음'),
            trailing: selected == null
                ? const Icon(Icons.check, color: Color(0xFF3B5BFF))
                : null,
            onTap: () {
              onSelect(null);
              Navigator.of(ctx).pop();
            },
          ),
          ..._GenderOption.values.map(
            (gender) => ListTile(
              title: Text(gender.label),
              trailing: selected == gender
                  ? const Icon(Icons.check, color: Color(0xFF3B5BFF))
                  : null,
              onTap: () {
                onSelect(gender);
                Navigator.of(ctx).pop();
              },
            ),
          ),
        ],
      ),
    ),
  );
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
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFFE6EAF2)),
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
                      .map((level) => _CircleLevelBadge(level: level))
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              item.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium?.copyWith(
                fontSize: 14,
                color: const Color(0xFF0F172A),
                fontWeight: FontWeight.w700,
                height: 1.25,
              ),
            ),
            const SizedBox(height: 8),
            if (item.imageUrl != null && item.imageUrl!.trim().isNotEmpty) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  item.imageUrl!,
                  height: 132,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    height: 132,
                    color: const Color(0xFFF1F5F9),
                    alignment: Alignment.center,
                    child: const Icon(Icons.broken_image_outlined),
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
            _InfoRow(icon: Icons.access_time, text: item.startTime),
            const SizedBox(height: 4),
            _InfoRow(icon: Icons.place_outlined, text: item.locationName ?? '-'),
            const SizedBox(height: 4),
            _InfoRow(
              icon: Icons.people_outline,
              text: '${item.currentPeople}/${item.maxPeople}명',
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color(0xFF4F7BFF),
                  child: Text(
                    (item.hostNickname?.isNotEmpty == true
                            ? item.hostNickname![0]
                            : '?')
                        .toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    '${item.hostNickname ?? '-'}\n⭐ ${(item.hostRatingScore ?? 0).toStringAsFixed(1)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF64748B),
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                ),
                Text(
                  '#매너좋음',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: const Color(0xFF4F46E5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
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
              fontSize: 12,
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

class _CircleLevelBadge extends StatelessWidget {
  const _CircleLevelBadge({required this.level});

  final String? level;

  @override
  Widget build(BuildContext context) {
    final lv = level ?? '-';
    final color = _levelColor(lv);
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text(
        lv == 'BEGINNER' ? '초' : lv,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _QuickFilterChip extends StatelessWidget {
  const _QuickFilterChip({required this.label, this.selected = false, this.onTap});

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFE8EEFF) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? const Color(0xFF3B5BFF) : const Color(0xFFE5E7EB),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: selected ? const Color(0xFF3B5BFF) : const Color(0xFF334155),
          ),
        ),
      ),
    );
  }
}

class _NotificationButton extends ConsumerWidget {
  const _NotificationButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(unreadNotificationCountProvider).asData?.value ?? 0;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            onPressed: () => context.push(AppRoutes.notifications),
            icon: const Icon(Icons.notifications_none_rounded),
            tooltip: '알림',
          ),
          if (unread > 0)
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 7,
                height: 7,
                decoration: const BoxDecoration(
                  color: Color(0xFFEF4444),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
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

final _matchListForUiProvider =
    FutureProvider.family<MatchListPageDto, MatchListQuery>((ref, query) async {
      if (query.level != null && query.level!.trim().isNotEmpty) {
        return ref.read(matchRepositoryProvider).getMatches(
              regionCode: query.regionCode,
              dateFrom: query.dateFrom,
              dateTo: query.dateTo,
              level: query.level,
              page: query.page,
              size: query.size,
            );
      }

      const levels = <String>['A', 'B', 'C', 'D', 'BEGINNER'];
      final pages = await Future.wait(
        levels.map(
          (level) => ref.read(matchRepositoryProvider).getMatches(
                regionCode: query.regionCode,
                dateFrom: query.dateFrom,
                dateTo: query.dateTo,
                level: level,
                page: query.page,
                size: query.size,
              ),
        ),
      );

      final byId = <int, MatchListItemDto>{};
      for (final page in pages) {
        for (final item in page.content) {
          byId[item.matchId] = item;
        }
      }

      final merged = byId.values.toList()
        ..sort((a, b) {
          final dateCompare = b.matchDate.compareTo(a.matchDate);
          if (dateCompare != 0) return dateCompare;
          final timeCompare = b.startTime.compareTo(a.startTime);
          if (timeCompare != 0) return timeCompare;
          return b.matchId.compareTo(a.matchId);
        });

      return MatchListPageDto(
        content: merged,
        totalElements: merged.length,
        totalPages: 1,
        size: merged.length,
        number: query.page,
      );
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
      'RECRUITING' => const Color(0xFF22C55E),
      'CLOSED' => const Color(0xFFF59E0B),
      'FINISHED' => const Color(0xFF64748B),
      _ => const Color(0xFF94A3B8),
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
          fontSize: 10,
        ),
      ),
    );
  }
}

String _levelLabel(String? value) {
  if (value == null || value.isEmpty) return '전체';
  if (value == 'BEGINNER') return '초심';
  return value;
}

enum _TimeSlot { morning, afternoon }

extension on _TimeSlot {
  String get label => switch (this) {
    _TimeSlot.morning => '오전',
    _TimeSlot.afternoon => '오후',
  };
}

enum _GenderOption { male, female }

extension on _GenderOption {
  String get label => switch (this) {
    _GenderOption.male => '남자',
    _GenderOption.female => '여자',
  };
}

bool _matchesTimeSlot(String startTime, _TimeSlot slot) {
  final hour = int.tryParse(startTime.split(':').first) ?? 0;
  return switch (slot) {
    _TimeSlot.morning => hour < 12,
    _TimeSlot.afternoon => hour >= 12,
  };
}

String _formatDate(DateTime date) {
  final y = date.year.toString().padLeft(4, '0');
  final m = date.month.toString().padLeft(2, '0');
  final d = date.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}

bool _sameDate(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;
