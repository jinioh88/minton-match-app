import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_notifier.dart';

class ProfileTabPage extends ConsumerWidget {
  const ProfileTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('프로필')),
      body: Center(
        child: FilledButton.tonal(
          onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
          child: const Text('로그아웃'),
        ),
      ),
    );
  }
}
