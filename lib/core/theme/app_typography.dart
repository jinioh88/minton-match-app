import 'package:flutter/material.dart';

/// M3 [TextTheme]를 브랜드에 맞게 다듬습니다 (Headline·Title·Body 계층).
TextTheme appTextTheme(TextTheme base, ColorScheme scheme) {
  return base.copyWith(
    displayLarge: base.displayLarge?.copyWith(
      fontWeight: FontWeight.w400,
      color: scheme.onSurface,
    ),
    headlineLarge: base.headlineLarge?.copyWith(
      fontWeight: FontWeight.w700,
      color: scheme.onSurface,
    ),
    headlineMedium: base.headlineMedium?.copyWith(
      fontWeight: FontWeight.w600,
      color: scheme.onSurface,
    ),
    headlineSmall: base.headlineSmall?.copyWith(
      fontWeight: FontWeight.w600,
      color: scheme.onSurface,
    ),
    titleLarge: base.titleLarge?.copyWith(
      fontWeight: FontWeight.w600,
      color: scheme.onSurface,
    ),
    titleMedium: base.titleMedium?.copyWith(
      fontWeight: FontWeight.w600,
      color: scheme.onSurface,
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontWeight: FontWeight.w400,
      color: scheme.onSurface,
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      fontWeight: FontWeight.w400,
      color: scheme.onSurface,
    ),
    bodySmall: base.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontWeight: FontWeight.w600,
    ),
  );
}
