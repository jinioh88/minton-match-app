import 'package:flutter/material.dart';

/// API 실패·폼 오류 등 메시지를 강조해 보여 줍니다.
class AppErrorMessageView extends StatelessWidget {
  const AppErrorMessageView({
    super.key,
    required this.message,
    this.title,
    this.onRetry,
  });

  final String message;
  final String? title;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 48, color: scheme.error),
            if (title != null) ...[
              const SizedBox(height: 12),
              Text(
                title!,
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 20),
              FilledButton.tonal(
                onPressed: onRetry,
                child: const Text('다시 시도'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
