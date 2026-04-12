/// HTTP 200인데 본문에 `success: false`가 오는 경우 등, 공통 래퍼 파싱용.
class ApiEnvelope {
  const ApiEnvelope({
    required this.success,
    this.data,
    this.code,
    this.message,
  });

  final bool success;
  final Object? data;
  final String? code;
  final String? message;

  static ApiEnvelope? tryParse(Object? raw) {
    if (raw is! Map) return null;
    final map = Map<String, dynamic>.from(raw);
    final s = map['success'];
    if (s is! bool) return null;
    return ApiEnvelope(
      success: s,
      data: map['data'],
      code: map['code']?.toString(),
      message: map['message']?.toString(),
    );
  }
}
