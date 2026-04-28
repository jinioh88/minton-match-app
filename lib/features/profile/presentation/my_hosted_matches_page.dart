import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import 'my_activity_providers.dart';

class MyHostedMatchesPage extends ConsumerStatefulWidget {
  const MyHostedMatchesPage({super.key});

  @override
  ConsumerState<MyHostedMatchesPage> createState() =>
      _MyHostedMatchesPageState();
}

class _MyHostedMatchesPageState extends ConsumerState<MyHostedMatchesPage> {
  String? _status;

  @override
  Widget build(BuildContext context) {
    final query = MyMatchesQuery(status: _status);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF111827),
          elevation: 0,
          title: const Text('매칭 내역'),
          bottom: const TabBar(
            labelColor: Color(0xFF3B5BFF),
            unselectedLabelColor: Color(0xFF334155),
            indicatorColor: Color(0xFF3B5BFF),
            tabs: [
              Tab(text: '내가 연 매칭'),
              Tab(text: '내가 참여한 매칭'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: DropdownButtonFormField<String?>(
                initialValue: _status,
                decoration: InputDecoration(
                  labelText: '상태 필터',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: null, child: Text('전체')),
                  DropdownMenuItem(value: 'RECRUITING', child: Text('모집중')),
                  DropdownMenuItem(value: 'CLOSED', child: Text('마감')),
                  DropdownMenuItem(value: 'FINISHED', child: Text('종료')),
                  DropdownMenuItem(value: 'CANCELLED', child: Text('취소')),
                ],
                onChanged: (v) => setState(() => _status = v),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _MatchHistoryList(
                    async: ref.watch(myHostedMatchesProvider(query)),
                    emptyLabel: '개설한 매칭이 없습니다.',
                    onRetry: () => ref.invalidate(myHostedMatchesProvider(query)),
                  ),
                  _MatchHistoryList(
                    async: ref.watch(myParticipatedMatchesProvider(query)),
                    emptyLabel: '참여한 매칭이 없습니다.',
                    onRetry: () =>
                        ref.invalidate(myParticipatedMatchesProvider(query)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MatchHistoryList extends StatelessWidget {
  const _MatchHistoryList({
    required this.async,
    required this.emptyLabel,
    required this.onRetry,
  });

  final AsyncValue<dynamic> async;
  final String emptyLabel;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return async.when(
      data: (page) {
        if (page.content.isEmpty) {
          return Center(
            child: Text(
              emptyLabel,
              style: const TextStyle(
                color: Color(0xFF111827),
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
          itemCount: page.content.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final item = page.content[index];
            return ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFE2E8F0)),
              ),
              title: Text(
                item.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF111827),
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                '${item.matchDate} ${item.startTime} · ${item.status}',
                style: const TextStyle(
                  color: Color(0xFF1F2937),
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Color(0xFF9CA3AF),
              ),
              onTap: () => context.push(AppRoutes.matchDetail(item.matchId)),
            );
          },
        );
      },
      loading: () => const AppLoadingIndicator(message: '매칭 목록을 불러오는 중...'),
      error: (e, _) => AppErrorMessageView(
        message: apiErrorUserMessage(e),
        onRetry: onRetry,
      ),
    );
  }
}
