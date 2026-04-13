import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('홈')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('매칭 목록(예시) — 아바타를 누르면 해당 사용자 프로필로 이동합니다.'),
          const SizedBox(height: 12),
          ListTile(
            leading: IconButton(
              icon: const CircleAvatar(child: Icon(Icons.person)),
              onPressed: () => context.push(AppRoutes.userProfile(2)),
            ),
            title: const Text('방장 닉네임 (userId=2)'),
            subtitle: const Text('데모: 타인 프로필 화면 연결'),
            onTap: () => context.push(AppRoutes.userProfile(2)),
          ),
          ListTile(
            leading: IconButton(
              icon: const CircleAvatar(child: Text('K')),
              onPressed: () => context.push(AppRoutes.userProfile(1)),
            ),
            title: const Text('신청자 (userId=1)'),
            onTap: () => context.push(AppRoutes.userProfile(1)),
          ),
        ],
      ),
    );
  }
}
