import 'package:flutter/material.dart';

import '../../shared/widgets/app_loading_indicator.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppLoadingIndicator(),
    );
  }
}
