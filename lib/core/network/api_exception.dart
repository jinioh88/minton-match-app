import 'package:dio/dio.dart';

/// 백엔드 공통 규격 `{ "code": "E001", "message": "..." }` 및 HTTP 오류를 앱에서 다루기 위한 예외.
class ApiException implements Exception {
  const ApiException({
    this.httpStatusCode,
    this.businessCode,
    this.message,
    this.rawBody,
  });

  final int? httpStatusCode;
  final String? businessCode;
  final String? message;
  final Object? rawBody;

  /// 응답 JSON이 Map일 때 파싱 시도. 규격에 맞지 않으면 `null`.
  static ApiException? tryParse(
    Object? data, {
    int? httpStatusCode,
  }) {
    if (data is! Map) return null;
    final map = Map<String, dynamic>.from(data);
    final code = map['code']?.toString();
    final msg = map['message']?.toString() ??
        map['errorMessage']?.toString() ??
        map['error']?.toString();
    if (code == null && msg == null) return null;
    return ApiException(
      httpStatusCode: httpStatusCode,
      businessCode: code,
      message: msg ?? '요청을 처리할 수 없습니다.',
      rawBody: data,
    );
  }

  static ApiException fromSuccessFalse(
    Map<String, dynamic> body, {
    int? httpStatusCode,
  }) {
    return tryParse(body, httpStatusCode: httpStatusCode) ??
        ApiException(
          httpStatusCode: httpStatusCode,
          message: body['message']?.toString() ?? 'success가 false입니다.',
          rawBody: body,
        );
  }

  static ApiException fromDioFailure(DioException err) {
    final parsed = tryParse(err.response?.data, httpStatusCode: err.response?.statusCode);
    return parsed ??
        ApiException(
          httpStatusCode: err.response?.statusCode,
          message: err.message ?? err.toString(),
          rawBody: err.response?.data,
        );
  }

  @override
  String toString() =>
      'ApiException(status=$httpStatusCode, code=$businessCode, message=$message)';
}
