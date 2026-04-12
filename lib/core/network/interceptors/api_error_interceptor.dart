import 'package:dio/dio.dart';

import '../api_envelope.dart';
import '../api_exception.dart';

DioException _withApiError(DioException err, ApiException ex) {
  return DioException(
    requestOptions: err.requestOptions,
    response: err.response,
    type: err.type,
    error: ex,
    message: ex.message,
    stackTrace: err.stackTrace,
  );
}

/// HTTP 본문의 `success: false` 및 에러 JSON → [ApiException].
/// 401 시 [onUnauthorized] 호출 후(토큰 갱신·로그인 유도는 상위에서 연결).
class ApiErrorInterceptor extends Interceptor {
  ApiErrorInterceptor({this.onUnauthorized});

  final void Function()? onUnauthorized;

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final envelope = ApiEnvelope.tryParse(response.data);
    if (envelope != null && !envelope.success) {
      final body = response.data is Map
          ? Map<String, dynamic>.from(response.data as Map)
          : <String, dynamic>{};
      final ex = ApiException.fromSuccessFalse(
        body,
        httpStatusCode: response.statusCode,
      );
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
          error: ex,
          message: ex.message,
        ),
      );
      return;
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final status = err.response?.statusCode;
    if (status == 401) {
      onUnauthorized?.call();
    }

    final parsed = ApiException.tryParse(
      err.response?.data,
      httpStatusCode: status,
    );
    if (parsed != null) {
      handler.reject(_withApiError(err, parsed));
      return;
    }

    if (err.response != null) {
      handler.reject(_withApiError(err, ApiException.fromDioFailure(err)));
      return;
    }

    handler.next(err);
  }
}
