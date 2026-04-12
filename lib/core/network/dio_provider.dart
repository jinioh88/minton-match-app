import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/auth_notifier.dart';
import '../env/app_environment.dart';
import 'interceptors/api_error_interceptor.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/network_log_interceptor.dart';

/// 401 발생 시 한 번 호출. `ProviderScope`에서 override해 로그인 화면으로 보낼 수 있습니다.
final onUnauthorizedProvider = Provider<void Function()?>(
  (ref) => null,
);

final dioProvider = Provider<Dio>((ref) {
  final baseUrl = AppEnvironment.appConfig.apiBaseUrl;
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: const {
        'Accept': 'application/json',
      },
    ),
  );

  if (kDebugMode) {
    dio.interceptors.add(NetworkLogInterceptor());
  }

  dio.interceptors.add(
    AuthInterceptor(() => ref.read(accessTokenProvider)),
  );

  dio.interceptors.add(
    ApiErrorInterceptor(
      onUnauthorized: () => ref.read(onUnauthorizedProvider)?.call(),
    ),
  );

  ref.onDispose(dio.close);

  return dio;
});
