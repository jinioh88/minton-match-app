import 'package:flutter/material.dart';

import 'api_error_user_message.dart';

/// 짧은 안내용 스낵바(플로팅). [AppTheme]의 [SnackBarThemeData]를 따릅니다.
void showAppSnackBar(BuildContext context, String message) {
  final messenger = ScaffoldMessenger.maybeOf(context);
  if (messenger == null) return;
  final theme = Theme.of(context);
  messenger.clearSnackBars();
  messenger.showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: theme.snackBarTheme.contentTextStyle ?? theme.textTheme.bodyMedium,
      ),
      behavior: theme.snackBarTheme.behavior ?? SnackBarBehavior.floating,
      backgroundColor: theme.snackBarTheme.backgroundColor,
    ),
  );
}

/// [DioException.error]가 [ApiException]인 경우 등 Step 0-4 에러 규격을 반영합니다.
void showApiErrorSnackBar(BuildContext context, Object? error) {
  showAppSnackBar(context, apiErrorUserMessage(error));
}
