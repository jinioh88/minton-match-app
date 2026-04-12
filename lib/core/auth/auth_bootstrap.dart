import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_notifier.dart';

/// 앱 시작 시 [authNotifierProvider]를 구독해 저장소에서 토큰을 읽어 옵니다.
class AuthBootstrap extends ConsumerWidget {
  const AuthBootstrap({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authNotifierProvider);
    return child;
  }
}
