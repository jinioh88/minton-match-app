import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_notifier.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/app_primary_button.dart';
import '../../../shared/widgets/korea_region_presets.dart';
import '../../auth/domain/user_level.dart';
import '../data/dto/user_profile_patch_dto.dart';
import '../data/profile_repository.dart';
import 'my_profile_notifier.dart';

class ProfileSetupPage extends ConsumerStatefulWidget {
  const ProfileSetupPage({super.key});

  @override
  ConsumerState<ProfileSetupPage> createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends ConsumerState<ProfileSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _nicknameCtrl = TextEditingController();
  final _racketCtrl = TextEditingController();
  final _playStyleCtrl = TextEditingController();

  String? _interest1;
  String? _interest2;
  UserLevel? _level = UserLevel.beginner;

  Timer? _nickDebounce;
  bool? _nicknameAvailable;
  bool _nicknameCheckPending = false;
  String _lastCheckedNick = '';
  bool _submitting = false;

  static final _locCode = RegExp(r'^\d{7,10}$');

  @override
  void dispose() {
    _nickDebounce?.cancel();
    _nicknameCtrl.dispose();
    _racketCtrl.dispose();
    _playStyleCtrl.dispose();
    super.dispose();
  }

  void _scheduleNicknameCheck(String raw) {
    _nickDebounce?.cancel();
    final nick = raw.trim();
    if (nick.length < 2) {
      setState(() {
        _nicknameAvailable = null;
        _nicknameCheckPending = false;
      });
      return;
    }
    setState(() => _nicknameCheckPending = true);
    _nickDebounce = Timer(const Duration(milliseconds: 450), () async {
      try {
        final ok =
            await ref.read(profileRepositoryProvider).isNicknameAvailable(nick);
        if (!mounted) return;
        setState(() {
          _nicknameAvailable = ok;
          _nicknameCheckPending = false;
          _lastCheckedNick = nick;
        });
      } catch (_) {
        if (!mounted) return;
        setState(() {
          _nicknameAvailable = null;
          _nicknameCheckPending = false;
        });
      }
    });
  }

  String? _validateInterest1(String? code) {
    if (code == null || code.isEmpty) return '관심 지역 1을 선택하세요.';
    if (!_locCode.hasMatch(code)) return '7~10자리 숫자 코드여야 합니다.';
    return null;
  }

  String? _validateInterest2(String? code) {
    if (code == null || code.isEmpty) return '관심 지역 2를 선택하세요.';
    if (!_locCode.hasMatch(code)) return '7~10자리 숫자 코드여야 합니다.';
    if (code == _interest1) return '관심 지역 1과 다른 지역을 선택하세요.';
    return null;
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final nick = _nicknameCtrl.text.trim();
    if (_nicknameCheckPending ||
        _nicknameAvailable != true ||
        _lastCheckedNick != nick) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('닉네임 중복 확인을 완료해 주세요.')),
      );
      return;
    }
    final loc1 = _interest1;
    final loc2 = _interest2;
    final err1 = _validateInterest1(loc1);
    if (err1 != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err1)));
      return;
    }
    final err2 = _validateInterest2(loc2);
    if (err2 != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err2)));
      return;
    }
    setState(() => _submitting = true);
    try {
      final patch = UserProfilePatchDto(
        nickname: nick,
        level: _level?.apiValue,
        interestLoc1: loc1,
        interestLoc2: loc2,
        racketInfo: _racketCtrl.text.trim().isEmpty
            ? null
            : _racketCtrl.text.trim(),
        playStyle: _playStyleCtrl.text.trim().isEmpty
            ? null
            : _playStyleCtrl.text.trim(),
      );
      await ref.read(profileRepositoryProvider).patchMe(patch);
      ref.invalidate(myProfileNotifierProvider);
      await ref.read(authNotifierProvider.notifier).markProfileComplete();
      if (mounted) context.go(AppRoutes.home);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_errText(e))),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  String _errText(Object e) {
    if (e is DioException && e.error is ApiException) {
      return (e.error! as ApiException).message ?? '저장에 실패했습니다.';
    }
    if (e is ApiException) return e.message ?? '저장에 실패했습니다.';
    return e.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('프로필 설정')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: _nicknameCtrl,
              decoration: const InputDecoration(
                labelText: '닉네임',
                hintText: '2자 이상',
              ),
              onChanged: _scheduleNicknameCheck,
              validator: (v) {
                final t = v?.trim() ?? '';
                if (t.length < 2) return '닉네임은 2자 이상이어야 합니다.';
                if (t.length > 30) return '최대 30자입니다.';
                return null;
              },
            ),
            const SizedBox(height: 8),
            _NicknameHint(
              pending: _nicknameCheckPending,
              available: _nicknameAvailable,
              matchesLast: _lastCheckedNick == _nicknameCtrl.text.trim(),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              key: ValueKey('s1-$_interest1'),
              initialValue: _interest1,
              decoration: const InputDecoration(labelText: '관심 지역 1'),
              items: koreaRegionPresets
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.code,
                      child: Text(e.label),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() {
                _interest1 = v;
                if (_interest2 != null && _interest2 == v) {
                  _interest2 = null;
                }
              }),
              validator: _validateInterest1,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              key: ValueKey('s2-$_interest2-$_interest1'),
              initialValue: _interest2,
              decoration: const InputDecoration(labelText: '관심 지역 2'),
              items: koreaRegionPresets
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.code,
                      child: Text(e.label),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _interest2 = v),
              validator: _validateInterest2,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<UserLevel>(
              key: ValueKey('slv-$_level'),
              initialValue: _level,
              decoration: const InputDecoration(labelText: '자칭 급수'),
              items: UserLevel.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.label),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _level = v),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _racketCtrl,
              decoration: const InputDecoration(
                labelText: '라켓 정보',
                hintText: '예: 요넥스 아크세이버',
              ),
              maxLength: 100,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _playStyleCtrl,
              decoration: const InputDecoration(
                labelText: '플레이 스타일 (선택)',
                hintText: '예: 공격형',
              ),
              maxLength: 50,
            ),
            const SizedBox(height: 24),
            AppPrimaryButton(
              label: '프로필 완료하고 시작하기',
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

class _NicknameHint extends StatelessWidget {
  const _NicknameHint({
    required this.pending,
    required this.available,
    required this.matchesLast,
  });

  final bool pending;
  final bool? available;
  final bool matchesLast;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (pending) {
      return Text('닉네임 확인 중…', style: theme.textTheme.bodySmall);
    }
    if (available == null || !matchesLast) {
      return const SizedBox.shrink();
    }
    final ok = available!;
    return Text(
      ok ? '사용 가능한 닉네임입니다.' : '이미 사용 중인 닉네임입니다.',
      style: theme.textTheme.bodySmall?.copyWith(
        color: ok ? Colors.green : theme.colorScheme.error,
      ),
    );
  }
}
