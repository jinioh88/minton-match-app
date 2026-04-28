import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import 'my_activity_providers.dart';

class MyReviewHubPage extends ConsumerWidget {
  const MyReviewHubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final writtenAsync = ref.watch(
      myWrittenReviewsProvider(const MyReviewsQuery()),
    );
    final pendingAsync = ref.watch(
      myPendingReviewsProvider(const MyReviewsQuery()),
    );
    final receivedAsync = ref.watch(
      myReceivedReviewsProvider(const MyReviewsQuery()),
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF111827),
          elevation: 0,
          title: const Text('후기 허브'),
          bottom: const TabBar(
            labelColor: Color(0xFF3B5BFF),
            unselectedLabelColor: Color(0xFF334155),
            indicatorColor: Color(0xFF3B5BFF),
            tabs: [
              Tab(text: '작성함'),
              Tab(text: '받은 후기'),
              Tab(text: '작성 대기'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            writtenAsync.when(
              data: (page) {
                if (page.items.isEmpty)
                  return const Center(
                    child: Text(
                      '작성한 후기가 없습니다.',
                      style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
                  itemCount: page.items.length,
                  itemBuilder: (context, index) {
                    final item = page.items[index];
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(item.match.title),
                        subtitle: Text(
                          '${item.reviewee.nickname} · ${item.createdAt.substring(0, 10)}',
                          style: const TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () =>
                  const AppLoadingIndicator(message: '작성한 후기를 불러오는 중...'),
              error: (e, _) =>
                  AppErrorMessageView(message: apiErrorUserMessage(e)),
            ),
            receivedAsync.when(
              data: (page) {
                if (page.items.isEmpty)
                  return const Center(
                    child: Text(
                      '받은 후기가 없습니다.',
                      style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
                  itemCount: page.items.length,
                  itemBuilder: (context, index) {
                    final item = page.items[index];
                    final writer = item.reviewer?.nickname ?? '익명';
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(item.match.title),
                        subtitle: Text(
                          '$writer · ${item.createdAt.substring(0, 10)}',
                          style: const TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () =>
                  const AppLoadingIndicator(message: '받은 후기를 불러오는 중...'),
              error: (e, _) =>
                  AppErrorMessageView(message: apiErrorUserMessage(e)),
            ),
            pendingAsync.when(
              data: (page) {
                if (page.items.isEmpty)
                  return const Center(
                    child: Text(
                      '작성 대기 후기가 없습니다.',
                      style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
                  itemCount: page.items.length,
                  itemBuilder: (context, index) {
                    final item = page.items[index];
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(item.match.title),
                        subtitle: Text('대상: ${item.reviewee.nickname}'),
                        trailing: const Text('작성'),
                        onTap: () => context.push(
                          AppRoutes.matchReviewWrite(
                            item.matchId,
                            item.revieweeId,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () =>
                  const AppLoadingIndicator(message: '작성 대기 후기를 불러오는 중...'),
              error: (e, _) =>
                  AppErrorMessageView(message: apiErrorUserMessage(e)),
            ),
          ],
        ),
      ),
    );
  }
}
