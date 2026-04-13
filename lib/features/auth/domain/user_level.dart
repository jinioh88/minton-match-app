import 'package:json_annotation/json_annotation.dart';

/// Sprint 1 API `Level` enum.
enum UserLevel {
  @JsonValue('A')
  a,
  @JsonValue('B')
  b,
  @JsonValue('C')
  c,
  @JsonValue('D')
  d,
  @JsonValue('BEGINNER')
  beginner,
}

extension UserLevelLabel on UserLevel {
  String get label => switch (this) {
        UserLevel.a => 'A급',
        UserLevel.b => 'B급',
        UserLevel.c => 'C급',
        UserLevel.d => 'D급',
        UserLevel.beginner => '초급',
      };

  /// PATCH/JSON용 API 문자열.
  String get apiValue => switch (this) {
        UserLevel.a => 'A',
        UserLevel.b => 'B',
        UserLevel.c => 'C',
        UserLevel.d => 'D',
        UserLevel.beginner => 'BEGINNER',
      };
}

UserLevel? parseUserLevel(String? raw) {
  if (raw == null || raw.isEmpty) return null;
  return switch (raw) {
    'A' => UserLevel.a,
    'B' => UserLevel.b,
    'C' => UserLevel.c,
    'D' => UserLevel.d,
    'BEGINNER' => UserLevel.beginner,
    _ => null,
  };
}
