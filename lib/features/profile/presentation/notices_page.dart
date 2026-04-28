import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';

class NoticesPage extends StatelessWidget {
  const NoticesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111827),
        elevation: 0,
        title: const Text('공지사항 및 고객센터'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
        itemCount: _notices.length,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final notice = _notices[index];
          return ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFFE2E8F0)),
            ),
            title: Text(notice.title),
            subtitle: Text(
              notice.date,
              style: const TextStyle(
                color: Color(0xFF1F2937),
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(Icons.chevron_right, color: Color(0xFF9CA3AF)),
            onTap: () => context.push(AppRoutes.noticeDetail(notice.id)),
          );
        },
      ),
    );
  }
}

class NoticeDetailPage extends StatelessWidget {
  const NoticeDetailPage({super.key, required this.noticeId});

  final int noticeId;

  @override
  Widget build(BuildContext context) {
    _NoticeItem? notice;
    for (final item in _notices) {
      if (item.id == noticeId) {
        notice = item;
        break;
      }
    }
    if (notice == null) {
      return Scaffold(
        backgroundColor: const Color(0xFFF5F7FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF111827),
          elevation: 0,
          title: const Text('공지 상세'),
        ),
        body: const Center(child: Text('존재하지 않는 공지입니다.')),
      );
    }
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111827),
        elevation: 0,
        title: const Text('공지 상세'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
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
                notice.title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                notice.date,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF1F2937),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(height: 24),
              Text(notice.body, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}

class _NoticeItem {
  const _NoticeItem({
    required this.id,
    required this.title,
    required this.date,
    required this.body,
  });

  final int id;
  final String title;
  final String date;
  final String body;
}

const _notices = <_NoticeItem>[
  _NoticeItem(
    id: 1,
    title: '서비스 점검 안내',
    date: '2026-04-28',
    body: '안정적인 서비스 제공을 위해 점검이 예정되어 있습니다. 점검 시간 동안 일부 기능이 제한될 수 있습니다.',
  ),
  _NoticeItem(
    id: 2,
    title: '채팅 기능 개선 안내',
    date: '2026-04-26',
    body: '실시간 채팅 안정성과 알림 동기화가 개선되었습니다. 최신 버전으로 업데이트 후 사용해 주세요.',
  ),
];
