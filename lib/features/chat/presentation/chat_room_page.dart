import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

import '../../../shared/widgets/api_error_user_message.dart';
import '../../../shared/widgets/app_error_message_view.dart';
import '../../../shared/widgets/app_error_snackbar.dart';
import '../../../shared/widgets/app_loading_indicator.dart';
import '../../profile/data/profile_repository.dart';
import '../data/chat_repository.dart';
import '../data/dto/chat_dto.dart';
import '../data/realtime/chat_realtime_service.dart';
import 'chat_providers.dart';

class ChatRoomPage extends ConsumerStatefulWidget {
  const ChatRoomPage({super.key, required this.roomId});

  final int roomId;

  @override
  ConsumerState<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends ConsumerState<ChatRoomPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessageDto> _messages = <ChatMessageDto>[];
  Timer? _pollTimer;
  bool _isSending = false;
  bool _initialized = false;
  bool _isLoadingOlder = false;
  int? _lastMessageId;
  int? _nextCursor;
  bool _realtimeEnabled = false;
  StompUnsubscribe? _roomUnsubscribe;
  StreamSubscription? _chatMessageSubscription;
  StreamSubscription? _chatErrorSubscription;

  @override
  void dispose() {
    _pollTimer?.cancel();
    _scrollController.removeListener(_onScroll);
    _roomUnsubscribe?.call();
    _chatMessageSubscription?.cancel();
    _chatErrorSubscription?.cancel();
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  Future<void> _initializeMessages() async {
    if (_initialized) return;
    final page = await ref
        .read(chatRepositoryProvider)
        .getMessages(widget.roomId);
    await _setupRealtime();
    if (!mounted) return;
    setState(() {
      _messages
        ..clear()
        ..addAll(page.messages);
      _lastMessageId = _messages.isNotEmpty ? _messages.last.messageId : null;
      _nextCursor = page.nextCursor;
      _initialized = true;
    });
    if (!_realtimeEnabled) {
      _startPolling();
    }
    _jumpToBottom();
  }

  Future<void> _setupRealtime() async {
    final service = ref.read(chatRealtimeServiceProvider);
    final connected = await service.ensureConnected();
    if (!mounted || !connected) return;
    _realtimeEnabled = true;

    _roomUnsubscribe?.call();
    _chatMessageSubscription?.cancel();
    _chatErrorSubscription?.cancel();

    _roomUnsubscribe = service.subscribeChatRoom(widget.roomId);
    _chatMessageSubscription = service.chatMessages.listen((message) {
      if (!mounted || message.roomId != widget.roomId) return;
      final exists = _messages.any((e) => e.messageId == message.messageId);
      if (exists) return;
      setState(() {
        _messages.add(message);
        _lastMessageId = message.messageId;
      });
      _jumpToBottom();
    });
    _chatErrorSubscription = service.errors.listen((errorBody) {
      if (!mounted) return;
      final message = (errorBody['message'] ?? '실시간 채팅 오류가 발생했습니다.').toString();
      showAppSnackBar(context, message);
    });

    if (_lastMessageId != null) {
      try {
        final gap = await ref
            .read(chatRepositoryProvider)
            .getMessages(widget.roomId, afterId: _lastMessageId, size: 50);
        if (!mounted || gap.messages.isEmpty) return;
        setState(() {
          _messages.addAll(gap.messages);
          _lastMessageId = _messages.last.messageId;
        });
        _jumpToBottom();
      } catch (_) {
        // Gap 보정 실패는 다음 수신/재조회에서 복구한다.
      }
    }
  }

  Future<void> _loadOlderMessages() async {
    if (_isLoadingOlder || _nextCursor == null) return;
    setState(() => _isLoadingOlder = true);
    try {
      final before = _scrollController.hasClients
          ? _scrollController.position.maxScrollExtent
          : 0.0;
      final page = await ref
          .read(chatRepositoryProvider)
          .getMessages(widget.roomId, cursor: _nextCursor, size: 30);
      if (!mounted) return;
      if (page.messages.isNotEmpty) {
        setState(() {
          _messages.insertAll(0, page.messages);
          _nextCursor = page.nextCursor;
        });
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!_scrollController.hasClients) return;
          final after = _scrollController.position.maxScrollExtent;
          final diff = after - before;
          _scrollController.jumpTo(_scrollController.offset + diff);
        });
      } else {
        setState(() => _nextCursor = null);
      }
    } finally {
      if (mounted) setState(() => _isLoadingOlder = false);
    }
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.offset <= 80) {
      _loadOlderMessages();
    }
  }

  void _startPolling() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(const Duration(seconds: 5), (_) async {
      if (!mounted || _lastMessageId == null) return;
      try {
        final page = await ref
            .read(chatRepositoryProvider)
            .getMessages(widget.roomId, afterId: _lastMessageId, size: 50);
        if (!mounted || page.messages.isEmpty) return;
        setState(() {
          _messages.addAll(page.messages);
          _lastMessageId = _messages.last.messageId;
        });
        _jumpToBottom();
      } catch (_) {
        // 폴링 오류는 다음 주기에 재시도한다.
      }
    });
  }

  void _jumpToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _sendMessage() async {
    if (_isSending) return;
    final text = _messageController.text.trim();
    if (text.isEmpty) return;
    setState(() => _isSending = true);
    try {
      if (_realtimeEnabled) {
        ref
            .read(chatRealtimeServiceProvider)
            .sendChatMessage(roomId: widget.roomId, content: text);
        if (!mounted) return;
        setState(() => _messageController.clear());
      } else {
        final message = await ref
            .read(chatRepositoryProvider)
            .sendMessage(
              widget.roomId,
              ChatMessageSendRequestDto(content: text),
            );
        if (!mounted) return;
        setState(() {
          _messages.add(message);
          _lastMessageId = message.messageId;
          _messageController.clear();
        });
        _jumpToBottom();
      }
    } catch (e) {
      if (!mounted) return;
      showApiErrorSnackBar(context, e);
    } finally {
      if (mounted) setState(() => _isSending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(chatRoomDetailProvider(widget.roomId));
    final myIdAsync = ref.watch(_myUserIdProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0F172A),
        elevation: 0,
        title: const Text('채팅방'),
      ),
      body: detailAsync.when(
        data: (detail) => FutureBuilder<void>(
          future: _initializeMessages(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting &&
                !_initialized) {
              return const AppLoadingIndicator();
            }
            if (snapshot.hasError) {
              return AppErrorMessageView(
                message: apiErrorUserMessage(snapshot.error),
                onRetry: () {
                  setState(() {
                    _initialized = false;
                  });
                },
              );
            }
            return Column(
              children: [
                _ChatNoticeHeader(notice: detail.matchNotice),
                Expanded(
                  child: _messages.isEmpty
                      ? const Center(child: Text('메시지가 아직 없습니다.'))
                      : ListView.separated(
                          controller: _scrollController,
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
                          itemCount: _messages.length + 1,
                          separatorBuilder: (_, _) => const SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              if (_isLoadingOlder) {
                                return const Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              if (_nextCursor != null) {
                                return Center(
                                  child: TextButton(
                                    onPressed: _loadOlderMessages,
                                    child: const Text('이전 메시지 불러오기'),
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            }
                            final item = _messages[index - 1];
                            final myId = myIdAsync.asData?.value;
                            final isMine =
                                myId != null && item.senderId == myId;
                            return _MessageBubble(item: item, isMine: isMine);
                          },
                        ),
                ),
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle_outline),
                          color: const Color(0xFF64748B),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            minLines: 1,
                            maxLines: 4,
                            textInputAction: TextInputAction.send,
                            onSubmitted: (_) => _sendMessage(),
                            decoration: const InputDecoration(
                              hintText: '메시지를 입력하세요',
                              hintStyle: TextStyle(
                                color: Color(0xFF6B7280),
                                fontWeight: FontWeight.w500,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFFE2E8F0),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFFE2E8F0),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFF111827),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            cursorColor: const Color(0xFF2563EB),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton.filled(
                          onPressed: _isSending ? null : _sendMessage,
                          icon: const Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        loading: () => const AppLoadingIndicator(message: '채팅방을 불러오는 중...'),
        error: (e, _) => AppErrorMessageView(
          message: apiErrorUserMessage(e),
          onRetry: () => ref.invalidate(chatRoomDetailProvider(widget.roomId)),
        ),
      ),
    );
  }
}

class _ChatNoticeHeader extends StatelessWidget {
  const _ChatNoticeHeader({required this.notice});

  final MatchChatNoticeDto notice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notice.title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  '${notice.matchDate} ${notice.startTime} · ${notice.locationName ?? '-'}',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: const Color(0xFF64748B)),
                ),
              ],
            ),
          ),
          TextButton(onPressed: () {}, child: const Text('지도보기')),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.item, required this.isMine});

  final ChatMessageDto item;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    final align = isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final bg = isMine ? const Color(0xFF2563EB) : const Color(0xFFF1F5F9);
    final fg = isMine ? Colors.white : const Color(0xFF0F172A);
    return Column(
      crossAxisAlignment: align,
      children: [
        Row(
          mainAxisAlignment: isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (!isMine) ...[
              CircleAvatar(
                radius: 12,
                backgroundColor: const Color(0xFFE2E8F0),
                child: Text(
                  (item.senderNickname?.isNotEmpty == true)
                      ? item.senderNickname![0]
                      : '?',
                  style: const TextStyle(fontSize: 10),
                ),
              ),
              const SizedBox(width: 6),
            ],
            Column(
              crossAxisAlignment: align,
              children: [
                if (!isMine && (item.senderNickname?.trim().isNotEmpty ?? false))
                  Padding(
                    padding: const EdgeInsets.only(left: 2, bottom: 3),
                    child: Text(
                      item.senderNickname!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF64748B),
                      ),
                    ),
                  ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 250),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(item.content ?? '', style: TextStyle(color: fg)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

final _myUserIdProvider = FutureProvider<int?>((ref) async {
  try {
    final me = await ref.read(profileRepositoryProvider).getMe();
    return me.id;
  } catch (_) {
    return null;
  }
});
