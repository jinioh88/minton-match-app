import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/app_primary_button.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../auth/domain/user_level.dart';
import '../data/dto/create_match_dto.dart';
import '../data/dto/match_view_dto.dart';
import '../data/match_repository.dart';
import 'match_providers.dart';

class EditMatchPage extends ConsumerStatefulWidget {
  const EditMatchPage({super.key, required this.matchId});

  final int matchId;

  @override
  ConsumerState<EditMatchPage> createState() => _EditMatchPageState();
}

class _EditMatchPageState extends ConsumerState<EditMatchPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  DateTime? _matchDate;
  TimeOfDay? _startTime;
  int _durationMin = 120;
  String? _regionCode;
  int _maxPeople = 4;
  CostPolicy _costPolicy = CostPolicy.splitEqual;
  final Set<UserLevel> _levels = <UserLevel>{};
  bool _initialized = false;
  bool _saving = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _initFrom(MatchDetailDto m) {
    if (_initialized) return;
    _titleController.text = m.title;
    _descriptionController.text = m.description;
    _locationController.text = m.locationName ?? '';
    _matchDate = DateTime.tryParse(m.matchDate);
    final parts = m.startTime.split(':');
    if (parts.length >= 2) {
      _startTime = TimeOfDay(
        hour: int.tryParse(parts[0]) ?? 0,
        minute: int.tryParse(parts[1]) ?? 0,
      );
    }
    _durationMin = m.durationMin;
    _regionCode = m.regionCode;
    _maxPeople = m.maxPeople;
    _costPolicy = m.costPolicy;
    _levels
      ..clear()
      ..addAll(_parseLevels(m.targetLevels));
    _initialized = true;
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _matchDate ?? now,
      firstDate: DateTime(now.year, now.month, now.day),
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked == null) return;
    setState(() => _matchDate = picked);
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _startTime ?? TimeOfDay.now(),
    );
    if (picked == null) return;
    setState(() => _startTime = picked);
  }

  Future<void> _save(MatchDetailDto current) async {
    if (_saving) return;
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_matchDate == null || _startTime == null || _regionCode == null) return;
    if (_maxPeople < current.currentPeople) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('정원은 현재 확정 인원(${current.currentPeople}명)보다 작을 수 없습니다.')),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final req = MatchUpdateRequestDto(
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
        matchDate: _formatDate(_matchDate!),
        startTime: _formatTime(_startTime!),
        durationMin: _durationMin,
        locationName: _locationController.text.trim(),
        regionCode: _regionCode!,
        maxPeople: _maxPeople,
        targetLevels: serializeTargetLevels(_levels.toList()),
        costPolicy: _costPolicy,
      );
      await ref.read(matchRepositoryProvider).updateMatch(widget.matchId, req);
      ref.invalidate(matchDetailProvider(widget.matchId));
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('매칭 정보를 수정했습니다.')));
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_errorMessage(e))));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(matchDetailProvider(widget.matchId));
    return Scaffold(
      appBar: AppBar(title: const Text('매칭 수정')),
      body: async.when(
        data: (m) {
          _initFrom(m);
          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextFormField(
                  controller: _titleController,
                  maxLength: 100,
                  decoration: const InputDecoration(labelText: '제목'),
                  validator: (v) => (v?.trim().isEmpty ?? true) ? '제목은 필수입니다.' : null,
                ),
                TextFormField(
                  controller: _descriptionController,
                  minLines: 4,
                  maxLines: 6,
                  maxLength: 500,
                  decoration: const InputDecoration(labelText: '상세 설명'),
                  validator: (v) => (v?.trim().isEmpty ?? true) ? '설명은 필수입니다.' : null,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _pickDate,
                        child: Text(_matchDate == null ? '날짜 선택' : _formatDate(_matchDate!)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _pickTime,
                        child: Text(_startTime == null ? '시간 선택' : _formatTime(_startTime!)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: '장소명'),
                ),
                DropdownButtonFormField<String>(
                  initialValue: _regionCode,
                  decoration: const InputDecoration(labelText: '지역'),
                  items: koreaRegionPresets
                      .map(
                        (e) => DropdownMenuItem<String>(
                          value: e.code,
                          child: Text(e.label),
                        ),
                      )
                      .toList(),
                  onChanged: (v) => setState(() => _regionCode = v),
                ),
                DropdownButtonFormField<int>(
                  initialValue: _durationMin,
                  decoration: const InputDecoration(labelText: '운동 시간(분)'),
                  items: const [
                    DropdownMenuItem(value: 60, child: Text('60')),
                    DropdownMenuItem(value: 90, child: Text('90')),
                    DropdownMenuItem(value: 120, child: Text('120')),
                    DropdownMenuItem(value: 150, child: Text('150')),
                    DropdownMenuItem(value: 180, child: Text('180')),
                    DropdownMenuItem(value: 210, child: Text('210')),
                    DropdownMenuItem(value: 240, child: Text('240')),
                  ],
                  onChanged: (v) => setState(() => _durationMin = v ?? 120),
                ),
                const SizedBox(height: 10),
                Text('모집 인원: $_maxPeople명 (현재 확정: ${m.currentPeople}명)'),
                Row(
                  children: [
                    IconButton(
                      onPressed: _maxPeople <= 2 ? null : () => setState(() => _maxPeople--),
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    IconButton(
                      onPressed: _maxPeople >= 12 ? null : () => setState(() => _maxPeople++),
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8,
                  children: UserLevel.values
                      .map(
                        (lv) => FilterChip(
                          label: Text(lv.label),
                          selected: _levels.contains(lv),
                          onSelected: (_) => setState(() {
                            if (_levels.contains(lv)) {
                              _levels.remove(lv);
                            } else {
                              _levels.add(lv);
                            }
                          }),
                        ),
                      )
                      .toList(),
                ),
                DropdownButtonFormField<CostPolicy>(
                  initialValue: _costPolicy,
                  decoration: const InputDecoration(labelText: '비용 분담'),
                  items: CostPolicy.values
                      .map((e) => DropdownMenuItem(value: e, child: Text(e.label)))
                      .toList(),
                  onChanged: (v) => setState(() => _costPolicy = v ?? CostPolicy.splitEqual),
                ),
                const SizedBox(height: 16),
                AppPrimaryButton(
                  label: '수정 완료',
                  icon: Icons.save,
                  isLoading: _saving,
                  onPressed: () => _save(m),
                ),
              ],
            ),
          );
        },
        loading: () => const AppLoadingIndicator(),
        error: (e, _) => AppErrorMessageView(message: e.toString()),
      ),
    );
  }
}

Set<UserLevel> _parseLevels(String? raw) {
  if (raw == null || raw.trim().isEmpty) return <UserLevel>{};
  return raw
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .map(parseUserLevel)
      .whereType<UserLevel>()
      .toSet();
}

String _formatDate(DateTime date) {
  final y = date.year.toString().padLeft(4, '0');
  final m = date.month.toString().padLeft(2, '0');
  final d = date.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}

String _formatTime(TimeOfDay time) {
  final hh = time.hour.toString().padLeft(2, '0');
  final mm = time.minute.toString().padLeft(2, '0');
  return '$hh:$mm';
}

String _errorMessage(Object e) {
  if (e is DioException && e.error is ApiException) {
    return (e.error! as ApiException).message ?? '요청에 실패했습니다.';
  }
  if (e is ApiException) return e.message ?? '요청에 실패했습니다.';
  return '요청에 실패했습니다.';
}
