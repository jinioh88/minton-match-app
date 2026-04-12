import 'package:flutter/material.dart';

/// 민턴 매치 브랜드 팔레트 (코트·셔틀콕 느낌의 그린 + 에너지 액센트).
abstract final class AppColors {
  AppColors._();

  /// 메인 브랜드 (코트 그린)
  static const Color brandPrimary = Color(0xFF0B6E4F);

  /// 포인트 (셔틀콕·라인 하이라이트)
  static const Color brandAccent = Color(0xFFE88821);
}
