import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

import '../../../../core/auth/auth_notifier.dart';
import '../../../../core/auth/session_expiry_handler.dart';
import '../../../../core/env/app_environment.dart';
import '../dto/chat_dto.dart';
import '../dto/notification_dto.dart';

final chatRealtimeServiceProvider = Provider<ChatRealtimeService>((ref) {
  final token = ref.watch(accessTokenProvider);
  final service = ChatRealtimeService(
    token: token,
    onUnauthorized: () async {
      await ref.read(sessionExpiryHandlerProvider).handleExpiredSession();
    },
  );
  ref.onDispose(service.dispose);
  return service;
});

class ChatRealtimeService {
  ChatRealtimeService({required String? token, required this.onUnauthorized})
    : _token = token;

  final String? _token;
  final Future<void> Function() onUnauthorized;
  StompClient? _client;
  bool _connected = false;

  final StreamController<ChatMessageDto> _chatMessageController =
      StreamController<ChatMessageDto>.broadcast();
  final StreamController<NotificationRealtimePayload> _notificationController =
      StreamController<NotificationRealtimePayload>.broadcast();
  final StreamController<Map<String, dynamic>> _errorController =
      StreamController<Map<String, dynamic>>.broadcast();

  Stream<ChatMessageDto> get chatMessages => _chatMessageController.stream;
  Stream<NotificationRealtimePayload> get notifications =>
      _notificationController.stream;
  Stream<Map<String, dynamic>> get errors => _errorController.stream;
  bool get isConnected => _connected;

  Future<bool> ensureConnected() async {
    if (_connected) return true;
    final token = _token?.trim() ?? '';
    if (token.isEmpty) return false;

    final completer = Completer<bool>();
    final client = StompClient(
      config: StompConfig(
        url: _toWsUrl(AppEnvironment.appConfig.apiBaseUrl),
        stompConnectHeaders: {'Authorization': 'Bearer $token'},
        webSocketConnectHeaders: {'Authorization': 'Bearer $token'},
        onConnect: (_) {
          _connected = true;
          if (!completer.isCompleted) completer.complete(true);
          _subscribeNotificationQueue();
          _subscribeErrorQueue();
        },
        onStompError: (frame) {
          _connected = false;
          if (_isUnauthorizedFrame(frame.body)) {
            unawaited(onUnauthorized());
          }
          if (!completer.isCompleted) completer.complete(false);
        },
        onWebSocketError: (_) {
          _connected = false;
          if (!completer.isCompleted) completer.complete(false);
        },
        onDisconnect: (_) => _connected = false,
      ),
    );

    _client = client;
    client.activate();
    return completer.future.timeout(
      const Duration(seconds: 5),
      onTimeout: () => false,
    );
  }

  StompUnsubscribe? subscribeChatRoom(int roomId) {
    if (!_connected || _client == null) return null;
    return _client!.subscribe(
      destination: '/topic/chat.$roomId',
      callback: (frame) {
        final body = frame.body;
        if (body == null || body.isEmpty) return;
        final decoded = jsonDecode(body);
        if (decoded is! Map<String, dynamic>) return;
        _chatMessageController.add(ChatMessageDto.fromJson(decoded));
      },
    );
  }

  void sendChatMessage({
    required int roomId,
    required String content,
    String messageType = 'TEXT',
  }) {
    if (!_connected || _client == null) return;
    _client!.send(
      destination: '/app/chat/messages',
      body: jsonEncode({
        'roomId': roomId,
        'content': content,
        'messageType': messageType,
      }),
    );
  }

  void _subscribeNotificationQueue() {
    _client?.subscribe(
      destination: '/user/queue/notifications',
      callback: (frame) {
        final body = frame.body;
        if (body == null || body.isEmpty) return;
        final decoded = jsonDecode(body);
        if (decoded is! Map<String, dynamic>) return;
        _notificationController.add(
          NotificationRealtimePayload.fromJson(decoded),
        );
      },
    );
  }

  void _subscribeErrorQueue() {
    _client?.subscribe(
      destination: '/user/queue/errors',
      callback: (frame) {
        final body = frame.body;
        if (body == null || body.isEmpty) return;
        final decoded = jsonDecode(body);
        if (decoded is! Map<String, dynamic>) return;
        if (_isUnauthorizedMap(decoded)) {
          unawaited(onUnauthorized());
        }
        _errorController.add(decoded);
      },
    );
  }

  void dispose() {
    _client?.deactivate();
    _connected = false;
    _chatMessageController.close();
    _notificationController.close();
    _errorController.close();
  }
}

bool _isUnauthorizedFrame(String? body) {
  if (body == null || body.isEmpty) return false;
  try {
    final decoded = jsonDecode(body);
    if (decoded is Map<String, dynamic>) {
      return _isUnauthorizedMap(decoded);
    }
  } catch (_) {
    // ignore JSON parse failure
  }
  return body.contains('UNAUTHORIZED');
}

bool _isUnauthorizedMap(Map<String, dynamic> map) {
  final code = map['code']?.toString() ?? '';
  final status = map['status']?.toString() ?? '';
  return code == 'UNAUTHORIZED' || status == '401';
}

String _toWsUrl(String baseUrl) {
  final uri = Uri.parse(baseUrl);
  final wsScheme = uri.scheme == 'https' ? 'wss' : 'ws';
  return uri
      .replace(scheme: wsScheme, path: '/ws-chat', query: null, fragment: null)
      .toString();
}
