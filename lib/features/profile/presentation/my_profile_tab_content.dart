import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/auth/auth_notifier.dart';
import '../../../core/network/api_exception.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../../shared/widgets/app_primary_button.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../auth/domain/user_level.dart';
import '../data/dto/user_profile_dto.dart';
import '../data/dto/user_profile_patch_dto.dart';
import 'my_profile_notifier.dart';
import 'widgets/profile_overview_widgets.dart';

class MyProfileTabContent extends ConsumerStatefulWidget {
  const MyProfileTabContent({super.key});

  @override
  ConsumerState<MyProfileTabContent> createState() =>
      _MyProfileTabContentState();
}

class _MyProfileTabContentState extends ConsumerState<MyProfileTabContent> {
  bool _editing = false;
  final _nick = TextEditingController();
  final _img = TextEditingController();
  final _racket = TextEditingController();
  String? _loc1;
  String? _loc2;
  String? _playStyle;
  UserLevel? _level;
  bool _saving = false;
  bool _uploadingImage = false;
  final _imagePicker = ImagePicker();

  @override
  void dispose() {
    _nick.dispose();
    _img.dispose();
    _racket.dispose();
    super.dispose();
  }

  void _fillFromProfile() {
    final state = ref.read(myProfileNotifierProvider);
    final p = switch (state) {
      AsyncData(:final value) => value,
      _ => null,
    };
    if (p == null) return;
    _nick.text = p.nickname;
    _img.text = p.profileImg ?? '';
    _racket.text = p.racketInfo ?? '';
    _playStyle = p.playStyle;
    _loc1 = p.interestLoc1;
    _loc2 = p.interestLoc2;
    _level = p.levelEnum ?? UserLevel.beginner;
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    try {
      final patch = UserProfilePatchDto(
        nickname: _nick.text.trim(),
        profileImg: _img.text.trim().isEmpty ? null : _img.text.trim(),
        level: _level?.apiValue,
        interestLoc1: _loc1,
        interestLoc2: _loc2,
        racketInfo: _racket.text.trim().isEmpty ? null : _racket.text.trim(),
        playStyle: _playStyle?.trim().isEmpty == true ? null : _playStyle?.trim(),
      );
      await ref.read(myProfileNotifierProvider.notifier).save(patch);
      if (mounted) setState(() => _editing = false);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_msg(e))),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<ImageSource?> _pickImageSource() async {
    return showModalBottomSheet<ImageSource>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('갤러리에서 선택'),
              onTap: () => Navigator.of(context).pop(ImageSource.gallery),
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('카메라로 촬영'),
              onTap: () => Navigator.of(context).pop(ImageSource.camera),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickAndUploadProfileImage() async {
    if (_uploadingImage) return;
    final source = await _pickImageSource();
    if (source == null) return;

    final pickedFile = await _imagePicker.pickImage(
      source: source,
      maxWidth: 1600,
      imageQuality: 85,
    );
    if (pickedFile == null) return;

    setState(() => _uploadingImage = true);
    try {
      final updated = await ref
          .read(myProfileNotifierProvider.notifier)
          .uploadProfileImage(File(pickedFile.path));
      _img.text = updated.profileImg ?? '';
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('프로필 이미지가 업데이트되었습니다.')));
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_msg(e))),
      );
    } finally {
      if (mounted) setState(() => _uploadingImage = false);
    }
  }

  String _msg(Object e) {
    if (e is DioException && e.error is ApiException) {
      return (e.error! as ApiException).message ?? '저장 실패';
    }
    if (e is ApiException) return e.message ?? '저장 실패';
    return e.toString();
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(myProfileNotifierProvider);

    return async.when(
      data: (p) {
        if (_editing) {
          return _EditForm(
            nick: _nick,
            img: _img,
            racket: _racket,
            playStyle: _playStyle,
            loc1: _loc1,
            loc2: _loc2,
            level: _level,
            saving: _saving,
            onLoc1: (v) => setState(() => _loc1 = v),
            onLoc2: (v) => setState(() => _loc2 = v),
            onPlayStyle: (v) => setState(() => _playStyle = v),
            onLevel: (v) => setState(() => _level = v),
            onCancel: () => setState(() => _editing = false),
            onSave: _save,
          );
        }
        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _ProfileHeaderSection(
              profile: p,
              onCameraTap: _pickAndUploadProfileImage,
            ),
            const SizedBox(height: 24),
            _ActivitySummarySection(profile: p),
            const SizedBox(height: 24),
            _DetailedSettingsSection(
              profile: p,
              onEdit: () {
                _fillFromProfile();
                setState(() => _editing = true);
              },
            ),
            const SizedBox(height: 20),
            const _MenuListSection(),
            const SizedBox(height: 28),
            TextButton(
              onPressed: () =>
                  ref.read(authNotifierProvider.notifier).logout(),
              child: const Text('로그아웃'),
            ),
          ],
        );
      },
      loading: () => const AppLoadingIndicator(),
      error: (e, _) => AppErrorMessageView(message: e.toString()),
    );
  }
}

class _ProfileHeaderSection extends StatelessWidget {
  const _ProfileHeaderSection({
    required this.profile,
    required this.onCameraTap,
  });

  final UserProfileDto profile;
  final VoidCallback onCameraTap;

  @override
  Widget build(BuildContext context) {
    final joinedAtText = _joinedAtLabel(profile.joinedAt);
    final tags = _resolvedTags(profile.mannerTags);
    return ProfileOverviewHeader(
      profile: profile,
      joinedAtText: joinedAtText,
      showCameraBadge: true,
      onCameraTap: onCameraTap,
      tags: tags,
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

class _ActivitySummarySection extends StatelessWidget {
  const _ActivitySummarySection({required this.profile});

  final UserProfileDto profile;

  @override
  Widget build(BuildContext context) {
    return ProfileActivitySummarySection(profile: profile);
  }
}

class _DetailedSettingsSection extends StatelessWidget {
  const _DetailedSettingsSection({
    required this.profile,
    required this.onEdit,
  });

  final UserProfileDto profile;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final loc1 = regionCodeLabel(profile.interestLoc1);
    final loc2 = regionCodeLabel(profile.interestLoc2);
    final racket = profile.racketInfo?.trim().isNotEmpty == true
        ? profile.racketInfo!.trim()
        : '-';
    return ProfileDetailsSection(
      title: '상세 설정',
      loc1Label: loc1,
      loc2Label: loc2,
      racketLabel: racket,
      playStyleLabel: profile.playStyle,
      onEdit: onEdit,
    );
  }
}

class _MenuListSection extends StatelessWidget {
  const _MenuListSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(height: 1),
        _MenuItem(label: '매칭 내역'),
        _MenuItem(label: '후기 관리'),
        _MenuItem(label: '공지사항 및 고객센터'),
        _MenuItem(label: '계정 관리'),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$label 준비 중입니다.')));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(label, style: Theme.of(context).textTheme.titleSmall),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _EditForm extends StatelessWidget {
  const _EditForm({
    required this.nick,
    required this.img,
    required this.racket,
    required this.playStyle,
    required this.loc1,
    required this.loc2,
    required this.level,
    required this.saving,
    required this.onLoc1,
    required this.onLoc2,
    required this.onPlayStyle,
    required this.onLevel,
    required this.onCancel,
    required this.onSave,
  });

  final TextEditingController nick;
  final TextEditingController img;
  final TextEditingController racket;
  final String? playStyle;
  final String? loc1;
  final String? loc2;
  final UserLevel? level;
  final bool saving;
  final ValueChanged<String?> onLoc1;
  final ValueChanged<String?> onLoc2;
  final ValueChanged<String?> onPlayStyle;
  final ValueChanged<UserLevel?> onLevel;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    const playStyleOptions = ['공격형', '수비형', '올라운드'];
    final loc1Items = koreaRegionPresets
        .map(
          (e) => DropdownMenuItem<String>(value: e.code, child: Text(e.label)),
        )
        .toList();
    final loc1Codes = koreaRegionPresets.map((e) => e.code).toSet();
    final safeLoc1 = loc1Codes.contains(loc1) ? loc1 : null;
    final safeLoc2 = loc1Codes.contains(loc2) ? loc2 : null;
    final safePlayStyle = playStyleOptions.contains(playStyle) ? playStyle : null;

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        TextField(
          controller: nick,
          decoration: const InputDecoration(labelText: '닉네임'),
        ),
        TextField(
          controller: img,
          decoration: const InputDecoration(
            labelText: '프로필 이미지 URL',
          ),
        ),
        DropdownButtonFormField<String>(
          key: ValueKey('loc1-$safeLoc1'),
          initialValue: safeLoc1,
          decoration: const InputDecoration(labelText: '관심 지역 1'),
          items: loc1Items,
          onChanged: onLoc1,
        ),
        DropdownButtonFormField<String?>(
          key: ValueKey('loc2-$safeLoc2'),
          initialValue: safeLoc2,
          decoration: const InputDecoration(labelText: '관심 지역 2'),
          items: [
            const DropdownMenuItem<String?>(
              value: null,
              child: Text('선택 안 함'),
            ),
            ...loc1Items.map(
              (e) => DropdownMenuItem<String?>(
                value: e.value,
                child: e.child,
              ),
            ),
          ],
          onChanged: onLoc2,
        ),
        DropdownButtonFormField<UserLevel>(
          key: ValueKey('lv-$level'),
          initialValue: level,
          decoration: const InputDecoration(labelText: '급수'),
          items: UserLevel.values
              .map(
                (e) => DropdownMenuItem(value: e, child: Text(e.label)),
              )
              .toList(),
          onChanged: onLevel,
        ),
        TextField(
          controller: racket,
          decoration: const InputDecoration(labelText: '라켓'),
        ),
        DropdownButtonFormField<String?>(
          key: ValueKey('style-$safePlayStyle'),
          initialValue: safePlayStyle,
          decoration: const InputDecoration(labelText: '플레이 스타일'),
          items: [
            const DropdownMenuItem<String?>(
              value: null,
              child: Text('선택 안 함'),
            ),
            ...playStyleOptions.map(
              (e) => DropdownMenuItem<String?>(
                value: e,
                child: Text(e),
              ),
            ),
          ],
          onChanged: onPlayStyle,
        ),
        const SizedBox(height: 16),
        AppPrimaryButton(
          label: '저장',
          icon: Icons.save,
          isLoading: saving,
          onPressed: onSave,
        ),
        TextButton(onPressed: onCancel, child: const Text('취소')),
      ],
    );
  }
}
