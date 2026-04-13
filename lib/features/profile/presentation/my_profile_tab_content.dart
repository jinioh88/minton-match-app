import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
import 'widgets/profile_avatar.dart';
import 'widgets/profile_fields_section.dart';
import 'widgets/profile_stats_strip.dart';

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
  final _style = TextEditingController();
  String? _loc1;
  String? _loc2;
  UserLevel? _level;
  bool _saving = false;

  @override
  void dispose() {
    _nick.dispose();
    _img.dispose();
    _racket.dispose();
    _style.dispose();
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
    _style.text = p.playStyle ?? '';
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
        playStyle: _style.text.trim().isEmpty ? null : _style.text.trim(),
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
            style: _style,
            loc1: _loc1,
            loc2: _loc2,
            level: _level,
            saving: _saving,
            onLoc1: (v) => setState(() => _loc1 = v),
            onLoc2: (v) => setState(() => _loc2 = v),
            onLevel: (v) => setState(() => _level = v),
            onCancel: () => setState(() => _editing = false),
            onSave: _save,
          );
        }
        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Center(child: ProfileAvatar(imageUrl: p.profileImg, radius: 48)),
            const SizedBox(height: 16),
            ProfileStatsStrip(profile: p, showMatchCounts: true),
            const SizedBox(height: 8),
            ProfileFieldsSection(profile: p),
            const SizedBox(height: 16),
            AppPrimaryButton(
              label: '프로필 수정',
              icon: Icons.edit,
              onPressed: () {
                _fillFromProfile();
                setState(() => _editing = true);
              },
            ),
            const SizedBox(height: 12),
            FilledButton.tonal(
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

class _EditForm extends StatelessWidget {
  const _EditForm({
    required this.nick,
    required this.img,
    required this.racket,
    required this.style,
    required this.loc1,
    required this.loc2,
    required this.level,
    required this.saving,
    required this.onLoc1,
    required this.onLoc2,
    required this.onLevel,
    required this.onCancel,
    required this.onSave,
  });

  final TextEditingController nick;
  final TextEditingController img;
  final TextEditingController racket;
  final TextEditingController style;
  final String? loc1;
  final String? loc2;
  final UserLevel? level;
  final bool saving;
  final ValueChanged<String?> onLoc1;
  final ValueChanged<String?> onLoc2;
  final ValueChanged<UserLevel?> onLevel;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    final loc1Items = koreaRegionPresets
        .map(
          (e) => DropdownMenuItem<String>(value: e.code, child: Text(e.label)),
        )
        .toList();
    final loc1Codes = koreaRegionPresets.map((e) => e.code).toSet();
    final safeLoc1 = loc1Codes.contains(loc1) ? loc1 : null;
    final safeLoc2 = loc1Codes.contains(loc2) ? loc2 : null;

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
        TextField(
          controller: style,
          decoration: const InputDecoration(labelText: '플레이 스타일'),
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
