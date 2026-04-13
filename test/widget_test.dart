import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:minton_match_app/core/auth/auth_bootstrap.dart';
import 'package:minton_match_app/main.dart';

void main() {
  testWidgets('앱이 MaterialApp을 빌드한다', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: AuthBootstrap(
          child: MyApp(),
        ),
      ),
    );
    await tester.pump();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
