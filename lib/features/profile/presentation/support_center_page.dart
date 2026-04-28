import 'package:flutter/material.dart';

class SupportCenterPage extends StatelessWidget {
  const SupportCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF111827),
        elevation: 0,
        title: const Text('공지사항 및 고객센터'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [_InquiryCard(), SizedBox(height: 16), _FaqSection()],
      ),
    );
  }
}

class _InquiryCard extends StatelessWidget {
  const _InquiryCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '문의 안내',
            style: TextStyle(
              color: Color(0xFF111827),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '문의 이메일: support@minton-match.com',
            style: TextStyle(color: Color(0xFF1F2937)),
          ),
          SizedBox(height: 4),
          Text(
            '운영 시간: 평일 10:00 ~ 18:00',
            style: TextStyle(color: Color(0xFF1F2937)),
          ),
        ],
      ),
    );
  }
}

class _FaqSection extends StatelessWidget {
  const _FaqSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '자주 묻는 질문',
          style: TextStyle(
            color: Color(0xFF111827),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8),
        ExpansionTile(
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text('후기는 언제 공개되나요?'),
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Text('상호 후기 작성 완료 또는 공개 시점 조건 충족 시 노출됩니다.'),
            ),
          ],
        ),
        ExpansionTile(
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text('참여 확정 후 취소가 가능한가요?'),
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Text('매칭 상태 및 정책에 따라 제한될 수 있습니다. 상세 화면의 안내를 확인하세요.'),
            ),
          ],
        ),
      ],
    );
  }
}
