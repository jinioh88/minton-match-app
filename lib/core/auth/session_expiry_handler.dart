import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_notifier.dart';

final sessionExpiryHandlerProvider = Provider<SessionExpiryHandler>((ref) {
  return SessionExpiryHandler(ref);
});

class SessionExpiryHandler {
  SessionExpiryHandler(this._ref);

  final Ref _ref;
  bool _isHandling = false;

  Future<void> handleExpiredSession() async {
    if (_isHandling) return;
    _isHandling = true;
    try {
      await _ref.read(authNotifierProvider.notifier).logout();
    } finally {
      _isHandling = false;
    }
  }
}
