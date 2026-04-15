import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/network/api_exception.dart';
import '../../../shared/widgets/app_primary_button.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../auth/domain/user_level.dart';
import '../data/dto/create_match_dto.dart';
import '../data/match_repository.dart';

class CreateMatchPage extends ConsumerStatefulWidget {
  const CreateMatchPage({super.key});

  @override
  ConsumerState<CreateMatchPage> createState() => _CreateMatchPageState();
}

class _CreateMatchPageState extends ConsumerState<CreateMatchPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _picker = ImagePicker();

  DateTime? _matchDate;
  TimeOfDay? _startTime;
  int _durationMin = 120;
  String? _regionCode;
  int _maxPeople = 4;
  CostPolicy _costPolicy = CostPolicy.splitEqual;
  final Set<UserLevel> _levels = <UserLevel>{UserLevel.c};
  XFile? _selectedImage;
  bool _submitting = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _matchDate ?? now,
      firstDate: DateTime(now.year, now.month, now.day),
      lastDate: now.add(const Duration(days: 14)),
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

  Future<void> _pickImage(ImageSource source) async {
    final image = await _picker.pickImage(
      source: source,
      imageQuality: 85,
      maxWidth: 1600,
    );
    if (image == null) return;
    setState(() => _selectedImage = image);
  }

  Future<void> _showImagePickerSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('갤러리에서 선택'),
              onTap: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('카메라로 촬영'),
              onTap: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  bool _validateForm() {
    final basicValid = _formKey.currentState?.validate() ?? false;
    if (!basicValid) return false;
    if (_matchDate == null || _startTime == null || _regionCode == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('날짜/시간/지역은 필수입니다.')),
      );
      return false;
    }
    if (_levels.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('희망 급수를 1개 이상 선택해주세요.')),
      );
      return false;
    }
    final combined = DateTime(
      _matchDate!.year,
      _matchDate!.month,
      _matchDate!.day,
      _startTime!.hour,
      _startTime!.minute,
    );
    if (combined.isBefore(DateTime.now())) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('과거 시간으로는 매칭을 생성할 수 없습니다.')),
      );
      return false;
    }
    return true;
  }

  Future<void> _submit() async {
    if (_submitting) return;
    if (!_validateForm()) return;

    setState(() => _submitting = true);
    try {
      String? imageUrl;
      if (_selectedImage != null) {
        imageUrl = await ref
            .read(matchRepositoryProvider)
            .uploadMatchImage(File(_selectedImage!.path));
      }
      final req = CreateMatchRequestDto(
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
        imageUrl: imageUrl,
      );
      final created = await ref.read(matchRepositoryProvider).createMatch(req);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('매칭이 등록되었습니다. (#${created.matchId})')),
      );
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_errorMessage(e))),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('매칭 만들기')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _BasicInfoSection(
              titleController: _titleController,
              descriptionController: _descriptionController,
            ),
            const SizedBox(height: 16),
            _TimeAndLocationSection(
              matchDate: _matchDate,
              startTime: _startTime,
              durationMin: _durationMin,
              locationController: _locationController,
              regionCode: _regionCode,
              onPickDate: _pickDate,
              onPickTime: _pickTime,
              onDurationChanged: (v) => setState(() => _durationMin = v),
              onRegionChanged: (v) => setState(() => _regionCode = v),
            ),
            const SizedBox(height: 16),
            _RulesSection(
              maxPeople: _maxPeople,
              levels: _levels,
              costPolicy: _costPolicy,
              onMaxPeopleChanged: (v) => setState(() => _maxPeople = v),
              onLevelToggle: (lv) => setState(() {
                if (_levels.contains(lv)) {
                  _levels.remove(lv);
                } else {
                  _levels.add(lv);
                }
              }),
              onCostPolicyChanged: (v) => setState(() => _costPolicy = v),
            ),
            const SizedBox(height: 16),
            _ImageSection(
              image: _selectedImage,
              onPickImage: _showImagePickerSheet,
              onClearImage: () => setState(() => _selectedImage = null),
            ),
            const SizedBox(height: 20),
            AppPrimaryButton(
              label: '매칭 등록하기',
              icon: Icons.check,
              isLoading: _submitting,
              onPressed: _submit,
            ),
          ],
        ),
      ),
    );
  }
}

class _BasicInfoSection extends StatelessWidget {
  const _BasicInfoSection({
    required this.titleController,
    required this.descriptionController,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('기본 정보', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            TextFormField(
              controller: titleController,
              maxLength: 100,
              decoration: const InputDecoration(labelText: '제목'),
              validator: (v) {
                final text = v?.trim() ?? '';
                if (text.length < 5) return '제목은 5자 이상 입력해주세요.';
                return null;
              },
            ),
            TextFormField(
              controller: descriptionController,
              minLines: 5,
              maxLines: 8,
              maxLength: 500,
              decoration: const InputDecoration(labelText: '상세 설명'),
              validator: (v) {
                final text = v?.trim() ?? '';
                if (text.length < 10) return '설명은 10자 이상 입력해주세요.';
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeAndLocationSection extends StatelessWidget {
  const _TimeAndLocationSection({
    required this.matchDate,
    required this.startTime,
    required this.durationMin,
    required this.locationController,
    required this.regionCode,
    required this.onPickDate,
    required this.onPickTime,
    required this.onDurationChanged,
    required this.onRegionChanged,
  });

  final DateTime? matchDate;
  final TimeOfDay? startTime;
  final int durationMin;
  final TextEditingController locationController;
  final String? regionCode;
  final VoidCallback onPickDate;
  final VoidCallback onPickTime;
  final ValueChanged<int> onDurationChanged;
  final ValueChanged<String?> onRegionChanged;

  @override
  Widget build(BuildContext context) {
    final regionItems = koreaRegionPresets
        .map((e) => DropdownMenuItem<String>(value: e.code, child: Text(e.label)))
        .toList();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('일시 및 장소', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: onPickDate,
                    icon: const Icon(Icons.calendar_today),
                    label: Text(
                      matchDate == null ? '날짜 선택' : _formatDate(matchDate!),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: onPickTime,
                    icon: const Icon(Icons.access_time),
                    label: Text(
                      startTime == null ? '시간 선택' : _formatTime(startTime!),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<int>(
              initialValue: durationMin,
              decoration: const InputDecoration(labelText: '운동 시간'),
              items: const [
                DropdownMenuItem(value: 60, child: Text('1시간')),
                DropdownMenuItem(value: 90, child: Text('1.5시간')),
                DropdownMenuItem(value: 120, child: Text('2시간')),
                DropdownMenuItem(value: 150, child: Text('2.5시간')),
                DropdownMenuItem(value: 180, child: Text('3시간')),
                DropdownMenuItem(value: 210, child: Text('3.5시간')),
                DropdownMenuItem(value: 240, child: Text('4시간')),
              ],
              onChanged: (v) => onDurationChanged(v ?? 120),
            ),
            TextFormField(
              controller: locationController,
              decoration: const InputDecoration(labelText: '장소명'),
              validator: (v) {
                final text = v?.trim() ?? '';
                if (text.isEmpty) return '장소명은 필수입니다.';
                return null;
              },
            ),
            DropdownButtonFormField<String>(
              initialValue: regionCode,
              decoration: const InputDecoration(labelText: '지역'),
              items: regionItems,
              onChanged: onRegionChanged,
              validator: (v) => v == null || v.isEmpty ? '지역을 선택해주세요.' : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _RulesSection extends StatelessWidget {
  const _RulesSection({
    required this.maxPeople,
    required this.levels,
    required this.costPolicy,
    required this.onMaxPeopleChanged,
    required this.onLevelToggle,
    required this.onCostPolicyChanged,
  });

  final int maxPeople;
  final Set<UserLevel> levels;
  final CostPolicy costPolicy;
  final ValueChanged<int> onMaxPeopleChanged;
  final ValueChanged<UserLevel> onLevelToggle;
  final ValueChanged<CostPolicy> onCostPolicyChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('참여 조건 및 규칙', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('모집 인원: $maxPeople명 (방장 포함)'),
            Row(
              children: [
                IconButton(
                  onPressed: maxPeople <= 2 ? null : () => onMaxPeopleChanged(maxPeople - 1),
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                IconButton(
                  onPressed: maxPeople >= 12 ? null : () => onMaxPeopleChanged(maxPeople + 1),
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text('희망 급수', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: UserLevel.values
                  .map(
                    (lv) => FilterChip(
                      label: Text(lv.label),
                      selected: levels.contains(lv),
                      onSelected: (_) => onLevelToggle(lv),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<CostPolicy>(
              initialValue: costPolicy,
              decoration: const InputDecoration(labelText: '비용 분담'),
              items: CostPolicy.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.label),
                    ),
                  )
                  .toList(),
              onChanged: (v) => onCostPolicyChanged(v ?? CostPolicy.splitEqual),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({
    required this.image,
    required this.onPickImage,
    required this.onClearImage,
  });

  final XFile? image;
  final VoidCallback onPickImage;
  final VoidCallback onClearImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('사진 등록(선택)', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            if (image == null)
              OutlinedButton.icon(
                onPressed: onPickImage,
                icon: const Icon(Icons.image_outlined),
                label: const Text('대표 이미지 선택'),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(image!.path),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: onPickImage,
                        icon: const Icon(Icons.refresh),
                        label: const Text('다시 선택'),
                      ),
                      TextButton.icon(
                        onPressed: onClearImage,
                        icon: const Icon(Icons.delete_outline),
                        label: const Text('제거'),
                      ),
                    ],
                  ),
                ],
              ),
          ],
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

String _formatTime(TimeOfDay time) {
  final hh = time.hour.toString().padLeft(2, '0');
  final mm = time.minute.toString().padLeft(2, '0');
  return '$hh:$mm';
}

String _errorMessage(Object e) {
  if (e is DioException && e.error is ApiException) {
    return (e.error! as ApiException).message ?? '요청에 실패했습니다.';
  }
  if (e is ApiException) {
    return e.message ?? '요청에 실패했습니다.';
  }
  return '요청에 실패했습니다.';
}
