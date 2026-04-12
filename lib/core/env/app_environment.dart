import 'app_config.dart';

/// 앱 전역 환경 (컴파일 시점 `--dart-define` 반영).
abstract final class AppEnvironment {
  AppEnvironment._();

  static final AppConfig appConfig = AppConfig.fromDartDefines();
}
