import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import 'my_activity_providers.dart';

class MyParticipatedMatchesPage extends ConsumerStatefulWidget {
  const MyParticipatedMatchesPage({super.key});

  @override
  ConsumerState<MyParticipatedMatchesPage> createState() =>
      _MyParticipatedMatchesPageState();
}

class _MyParticipatedMatchesPageState
    extends ConsumerState<MyParticipatedMatchesPage> {
  String? _status;

  @override
  Widget build(BuildContext context) {
    final query = MyMatchesQuery(status: _status);
    final async = ref.watch(myParticipatedMatchesProvider(query));
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111827),
        elevation: 0,
        title: const Text('매칭 내역'),
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
            child: async.when(
              data: (page) {
                if (page.content.isEmpty) {
                  return const Center(child: Text('참여한 매칭이 없습니다.'));
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
                        style: const TextStyle(color: Color(0xFF334155)),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Color(0xFF9CA3AF),
                      ),
                      onTap: () =>
                          context.push(AppRoutes.matchDetail(item.matchId)),
                    );
                  },
                );
              },
              loading: () =>
                  const AppLoadingIndicator(message: '매칭 목록을 불러오는 중...'),
              error: (e, _) => AppErrorMessageView(
                message: apiErrorUserMessage(e),
                onRetry: () =>
                    ref.invalidate(myParticipatedMatchesProvider(query)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
