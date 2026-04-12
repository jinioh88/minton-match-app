import 'package:flutter/material.dart';

/// Material 3 스타일 주요 액션 버튼. 로딩 중에는 `onPressed`가 비활성화됩니다.
class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      child: _AppPrimaryButtonChild(
        label: label,
        isLoading: isLoading,
        icon: icon,
        onPrimary: colorScheme.onPrimary,
        labelStyle: theme.textTheme.labelLarge?.copyWith(color: colorScheme.onPrimary),
      ),
    );
  }
}

class _AppPrimaryButtonChild extends StatelessWidget {
  const _AppPrimaryButtonChild({
    required this.label,
    required this.isLoading,
    required this.icon,
    required this.onPrimary,
    required this.labelStyle,
  });

  final String label;
  final bool isLoading;
  final IconData? icon;
  final Color onPrimary;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isLoading)
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: onPrimary,
            ),
          )
        else if (icon != null)
          Icon(icon, size: 20, color: onPrimary),
        if (isLoading || icon != null) const SizedBox(width: 8),
        Text(label, style: labelStyle),
      ],
    );
  }
}
