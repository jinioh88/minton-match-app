import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chat_repository.dart';
import '../dto/notification_dto.dart';

final pushTokenSyncServiceProvider = Provider<PushTokenSyncService>((ref) {
  final service = PushTokenSyncService(ref.read(chatRepositoryProvider));
  ref.onDispose(service.dispose);
  return service;
});

class PushTokenSyncService {
  PushTokenSyncService(this._repository);

  final ChatRepository _repository;
  StreamSubscription<String>? _tokenRefreshSubscription;
  StreamSubscription<RemoteMessage>? _messageOpenSubscription;
  String? _lastRegisteredToken;
  bool _firebaseReady = false;
  bool _initialMessageHandled = false;

  Future<void> onLogin() async {
    if (kIsWeb) return;
    final ready = await _ensureFirebaseReady();
    if (!ready) return;

    final messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    final token = await messaging.getToken();
    if (token != null && token.trim().isNotEmpty) {
      await _registerToken(token.trim());
    }

    _tokenRefreshSubscription ??= messaging.onTokenRefresh.listen((
      newToken,
    ) async {
      final t = newToken.trim();
      if (t.isEmpty) return;
      await _registerToken(t);
    });
  }

  Future<void> bindMessageOpenHandler(
    void Function(PushOpenTarget target) onOpen,
  ) async {
    if (kIsWeb) return;
    final ready = await _ensureFirebaseReady();
    if (!ready) return;

    _messageOpenSubscription ??= FirebaseMessaging.onMessageOpenedApp.listen((
      message,
    ) {
      final target = _resolveOpenTarget(message.data);
      if (target != null) onOpen(target);
    });

    if (_initialMessageHandled) return;
    _initialMessageHandled = true;
    final initial = await FirebaseMessaging.instance.getInitialMessage();
    if (initial == null) return;
    final target = _resolveOpenTarget(initial.data);
    if (target != null) onOpen(target);
  }

  Future<void> onLogout() async {
    final token = _lastRegisteredToken;
    if (token == null || token.isEmpty) return;
    try {
      await _repository.revokePushToken(
        PushTokenRevokeRequestDto(token: token),
      );
    } catch (_) {
      // 로그아웃 흐름을 막지 않기 위해 토큰 해지 실패는 무시한다.
    } finally {
      _lastRegisteredToken = null;
      await _tokenRefreshSubscription?.cancel();
      _tokenRefreshSubscription = null;
    }
  }

  Future<void> _registerToken(String token) async {
    final platform = _platformName;
    if (platform == null) return;
    await _repository.registerPushToken(
      PushTokenRegisterRequestDto(fcmToken: token, platform: platform),
    );
    _lastRegisteredToken = token;
  }

  Future<bool> _ensureFirebaseReady() async {
    if (_firebaseReady) return true;
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }
      _firebaseReady = true;
      return true;
    } catch (_) {
      return false;
    }
  }

  String? get _platformName {
    if (kIsWeb) return null;
    if (Platform.isAndroid) return 'ANDROID';
    if (Platform.isIOS) return 'IOS';
    return null;
  }

  void dispose() {
    _tokenRefreshSubscription?.cancel();
    _messageOpenSubscription?.cancel();
  }
}

PushOpenTarget? _resolveOpenTarget(Map<String, dynamic> data) {
  final relatedMatchId = int.tryParse('${data['relatedMatchId'] ?? ''}');
  if (relatedMatchId == null) return const PushOpenTarget.notifications();
  final type = '${data['type'] ?? ''}'.trim();
  if (_openChatTypes.contains(type)) {
    return PushOpenTarget.matchChat(relatedMatchId);
  }
  return PushOpenTarget.matchDetail(relatedMatchId);
}

const Set<String> _openChatTypes = {
  'PARTICIPATION_ACCEPTED',
  'WAITLIST_SLOT_OFFER',
  'WAITLIST_EMERGENCY_OPEN',
};

class PushOpenTarget {
  const PushOpenTarget.matchDetail(this.matchId)
    : kind = PushOpenKind.matchDetail;
  const PushOpenTarget.matchChat(this.matchId) : kind = PushOpenKind.matchChat;
  const PushOpenTarget.notifications()
    : kind = PushOpenKind.notifications,
      matchId = null;

  final PushOpenKind kind;
  final int? matchId;
}

enum PushOpenKind { matchDetail, matchChat, notifications }
