import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_notifier.dart';
import '../../../shared/widgets/app_primary_button.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: Center(
        child: AppPrimaryButton(
          label: '로그인 (임시 토큰)',
          icon: Icons.login,
          onPressed: () async {
            await ref.read(authNotifierProvider.notifier).onLoginSuccess(
                  'phase0-dev-token',
                );
          },
        ),
      ),
    );
  }
}
