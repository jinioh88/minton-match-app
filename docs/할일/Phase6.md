# Phase 6 — Sprint 6 대응: 실시간·푸시 · 보안 마무리 (B6-8, B7)

**이전 Phase**: [Phase5.md](./Phase5.md)  
**다음 Phase**: [Phase7.md](./Phase7.md)

**API**: `docs/api/Sprint6-API.md`

---

## Step

| Step | 상태 | 할일 | 백로그 |
|------|------|------|--------|
| 6-1 | 완료 | FCM/APNs: 토큰 등록·해지 API 연동, 권한 요청, 백그라운드 수신 기본 | B6-8 |
| 6-2 | 완료 | STOMP/WebSocket(있다면) 알림 구독 — `Sprint6-API.md` §12 등 준수 | B6-8 |
| 6-3 | 완료 | 전 API 호출에 인증 헤더·토큰 만료 처리 일원화 | B7-2 |
| 6-4 | 완료 | 로딩/스켈레톤, 네트워크 오류, 유효성 검사 메시지 정리 | 비기능 |
| 6-5 | 완료 | 주요 시나리오 **수동/E2E** 체크리스트 작성 및 통과 | - |

### 진행 메모 (2026-04-28)

- `stomp_dart_client` 기반 `ChatRealtimeService` 추가 (`/ws-chat`, `CONNECT Authorization` 헤더).
- `SUBSCRIBE /user/queue/notifications`, `/user/queue/errors`, `/topic/chat.{roomId}` 연결.
- 채팅 탭 진입 시 실시간 연결 후 알림 수신 이벤트로 알림 목록/미읽음 카운트 invalidate 처리.
- 채팅 상세에서 STOMP 기반 메시지 송수신 적용 및 재연결 직후 `afterId` 1회 Gap 보정.
- 실시간 연결 실패 시 기존 REST 전송/폴링 경로로 폴백 유지.
- 푸시 토큰 API 래퍼(`POST /api/notifications/push-tokens`, `/revoke`) 추가.
- `firebase_core`/`firebase_messaging` 연동 및 로그인/로그아웃 시 토큰 등록·해지 자동 동기화 추가.
- `onMessageOpenedApp`/`getInitialMessage` 기반 백그라운드·종료 푸시 딥링크(매칭 상세/채팅/알림센터) 처리 추가.
- `SessionExpiryHandler`를 도입해 REST 401 + STOMP `UNAUTHORIZED`를 공통 로그아웃 흐름으로 일원화.
- 채팅/알림 화면의 로딩 문구, 재시도 가능한 에러 뷰, API 에러 스낵바 표준화 적용.

### 남은 작업

- 없음

---

## 완료 조건

- 웹과 동등한 “알림 체감” 목표에 가깝게 조정(백엔드 배포 전제).
- 수동/E2E 체크리스트: [Phase6-수동E2E-체크리스트.md](../Phase6-수동E2E-체크리스트.md)

---

[← 목차](./README.md)
