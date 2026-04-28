import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_notifier.dart';
import '../../../shared/widgets/app_error_snackbar.dart';

class AccountManagementPage extends ConsumerWidget {
  const AccountManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111827),
        elevation: 0,
        title: const Text('계정 관리'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _LinkedProvidersCard(),
          const SizedBox(height: 16),
          _ActionTile(
            title: '계정 비활성화',
            description: '일시적으로 계정을 쉬고 싶을 때 사용합니다.',
            buttonLabel: '비활성화 요청',
            onPressed: () {
              showAppSnackBar(context, '계정 비활성화는 고객센터를 통해 접수해주세요.');
            },
          ),
          const SizedBox(height: 12),
          _ActionTile(
            title: '회원 탈퇴',
            description: '탈퇴 시 복구가 제한될 수 있습니다.',
            buttonLabel: '탈퇴 진행',
            danger: true,
            onPressed: () async {
              final ok = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('회원 탈퇴'),
                  content: const Text('정말 탈퇴하시겠어요? 현재 버전에서는 로그아웃으로 처리됩니다.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(ctx).pop(false),
                      child: const Text('취소'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.of(ctx).pop(true),
                      child: const Text('확인'),
                    ),
                  ],
                ),
              );
              if (ok != true || !context.mounted) return;
              await ref.read(authNotifierProvider.notifier).logout();
            },
          ),
        ],
      ),
    );
  }
}

class _LinkedProvidersCard extends StatelessWidget {
  const _LinkedProvidersCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '연동 계정',
            style: TextStyle(
              color: Color(0xFF111827),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '카카오 / 네이버 / 구글 / 애플',
            style: TextStyle(color: Color(0xFF1F2937)),
          ),
          SizedBox(height: 4),
          Text(
            '연동 상태 상세 노출은 추후 백엔드 연동 시 제공됩니다.',
            style: TextStyle(color: Color(0xFF1F2937)),
          ),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({
    required this.title,
    required this.description,
    required this.buttonLabel,
    required this.onPressed,
    this.danger = false,
  });

  final String title;
  final String description;
  final String buttonLabel;
  final VoidCallback onPressed;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final color = danger ? const Color(0xFFB91C1C) : const Color(0xFF1D4ED8);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF111827),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFF1F2937),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(foregroundColor: color),
              child: Text(buttonLabel),
            ),
          ),
        ],
      ),
    );
  }
}
