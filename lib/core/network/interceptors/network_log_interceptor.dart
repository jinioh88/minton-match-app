import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class _ReleaseQuietFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => !kReleaseMode;
}

/// 디버그·프로파일에서만 요청/응답 메타를 로깅합니다.
class NetworkLogInterceptor extends Interceptor {
  NetworkLogInterceptor({Logger? logger})
      : _logger = logger ??
            Logger(
              filter: _ReleaseQuietFilter(),
              printer: PrettyPrinter(
                methodCount: 0,
                dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
              ),
            );

  final Logger _logger;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.d('→ ${options.method} ${options.uri}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d('← ${response.statusCode} ${response.requestOptions.uri}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.e('✗ ${err.requestOptions.uri}', error: err, stackTrace: err.stackTrace);
    handler.next(err);
  }
}
