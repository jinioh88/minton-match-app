import 'package:dio/dio.dart';

import '../../core/network/api_exception.dart';

/// [ApiException], [DioException] 등을 사용자용 한 줄 메시지로 변환합니다.
String apiErrorUserMessage(Object? error) {
  if (error == null) return '알 수 없는 오류가 발생했습니다.';
  if (error is ApiException) {
    final m = error.message;
    if (m != null && m.isNotEmpty) return m;
    return '요청을 처리할 수 없습니다.';
  }
  if (error is DioException) {
    final inner = error.error;
    if (inner is ApiException) return apiErrorUserMessage(inner);
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return '연결 시간이 초과되었습니다.';
    }
    if (error.type == DioExceptionType.connectionError) {
      return '네트워크 연결을 확인해 주세요.';
    }
    return error.message ?? '네트워크 오류가 발생했습니다.';
  }
  return error.toString();
}
