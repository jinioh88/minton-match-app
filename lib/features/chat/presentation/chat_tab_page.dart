import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  const ChatTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('채팅')),
      body: const Center(child: Text('채팅 탭')),
    );
  }
}
