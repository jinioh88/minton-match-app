import 'package:flutter/foundation.dart';

@immutable
class AuthSession {
  const AuthSession({
    required this.accessToken,
    required this.profileComplete,
  });

  final String accessToken;
  final bool profileComplete;
}
