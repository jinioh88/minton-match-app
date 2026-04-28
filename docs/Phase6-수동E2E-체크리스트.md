# Phase 6 수동/E2E 체크리스트

Sprint 6(실시간 채팅·인앱 알림·푸시·세션 만료 일원화) 검증용 체크리스트입니다.  
API 상세는 [docs/api/Sprint6-API.md](./api/Sprint6-API.md), REST 기본 스키마는 [docs/api/Sprint5-API.md](./api/Sprint5-API.md)를 함께 참고합니다.

---

## 1. 사전 준비

- [ ] 백엔드가 실행 중이며 WebSocket 엔드포인트 `/ws-chat`이 열려 있다.
- [ ] 테스트 계정 2개 이상(실시간 송수신 교차 확인용)이 준비되어 있다.
- [ ] 모바일 푸시 테스트 시 Firebase 설정 파일이 반영되어 있다.
  - Android: `android/app/google-services.json`
  - iOS: `ios/Runner/GoogleService-Info.plist`
- [ ] 앱 실행 시 `API_BASE_URL`이 실제 백엔드 주소를 바라본다.

권장 실행 예시:

```bash
flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8080
```

---

## 2. 시나리오 체크리스트

## 2.1 Step 6-1 — FCM 토큰 등록/해지

- [ ] 로그인 직후 알림 권한 요청이 노출된다(모바일).
- [ ] 로그인 후 `POST /api/notifications/push-tokens`가 호출된다.
- [ ] 토큰 갱신 이벤트 발생 시 동일 API로 재등록된다.
- [ ] 로그아웃 시 `POST /api/notifications/push-tokens/revoke`가 호출된다.

## 2.2 Step 6-2 — STOMP 실시간 알림/채팅

- [ ] 채팅 탭 진입 시 STOMP `CONNECT`가 `Authorization` 헤더와 함께 성공한다.
- [ ] 채팅 상세 진입 시 `/topic/chat.{roomId}` 구독이 생성된다.
- [ ] A 사용자가 메시지 전송 시 B 사용자 채팅창에 실시간 반영된다.
- [ ] 채팅 목록 화면에서 `/user/queue/notifications` 수신 시 알림 배지/목록이 갱신된다.

## 2.3 Step 6-3 — 인증 만료 일원화

- [ ] REST API를 401로 만들면(만료 토큰) 자동 로그아웃 후 로그인 화면으로 이동한다.
- [ ] STOMP 오류 큐에서 `UNAUTHORIZED` 수신 시 동일하게 자동 로그아웃된다.
- [ ] 중복 만료 이벤트가 들어와도 로그아웃 처리가 1회 흐름으로 동작한다.

## 2.4 Step 6-4 — 로딩/오류/유효성 메시지

- [ ] 채팅 목록/채팅방/알림센터 로딩 문구가 노출된다.
- [ ] API 오류 시 사용자 친화 메시지 스낵바가 노출된다.
- [ ] 오류 화면에서 `다시 시도`로 재조회가 동작한다.
- [ ] 빈 상태 UI(메시지 없음, 알림 없음)가 정상 표시된다.

## 2.5 백그라운드/종료 푸시 딥링크

- [ ] 앱 백그라운드에서 푸시 탭 시 `onMessageOpenedApp`으로 이동 처리된다.
- [ ] 앱 종료 상태에서 푸시 탭 시 `getInitialMessage`로 이동 처리된다.
- [ ] `relatedMatchId` + 타입 기준 라우팅이 맞다.
  - `PARTICIPATION_ACCEPTED`, `WAITLIST_*` → 채팅 진입
  - 그 외 + `relatedMatchId` 있음 → 매칭 상세
  - `relatedMatchId` 없음 → 알림센터

---

## 3. 실행 결과 기록

| 항목 | 결과(PASS/FAIL/BLOCKED) | 메모 |
|------|--------------------------|------|
| 6-1 푸시 토큰 등록/해지 |  |  |
| 6-2 STOMP 실시간 동작 |  |  |
| 6-3 인증 만료 일원화 |  |  |
| 6-4 로딩/오류/검증 메시지 |  |  |
| 백그라운드/종료 푸시 딥링크 |  |  |

---

## 4. 상세 시나리오(실행 순서)

### S-01 로그인 후 푸시 토큰 등록

1. 앱 실행 후 테스트 계정 A로 로그인한다.
2. 알림 권한 팝업이 뜨면 허용한다.
3. 네트워크 로그에서 `POST /api/notifications/push-tokens` 호출을 확인한다.
4. 메모에 요청 시각, 플랫폼(`ANDROID`/`IOS`), 응답 성공 여부를 기록한다.

기대 결과:

- 로그인 직후 토큰 등록 API 1회 이상 성공.

### S-02 로그아웃 시 푸시 토큰 해지

1. S-01 직후 동일 세션에서 프로필 탭으로 이동한다.
2. 로그아웃 버튼을 누른다.
3. 네트워크 로그에서 `POST /api/notifications/push-tokens/revoke` 호출을 확인한다.

기대 결과:

- 로그인 화면으로 이동하며 토큰 해지 API 성공.

### S-03 채팅 실시간 수신

1. 기기 A(계정 A)와 기기 B(계정 B)를 같은 채팅방에 진입시킨다.
2. A가 텍스트 메시지를 전송한다.
3. B에서 새로고침 없이 메시지가 즉시 추가되는지 확인한다.

기대 결과:

- B 화면에 실시간 메시지 반영(`STOMP /topic/chat.{roomId}`).

### S-04 알림 실시간 반영

1. 계정 A를 채팅 목록 화면에 둔다.
2. 계정 B에서 A에게 알림이 발생하는 행동(참여 수락/대기열 오퍼 등)을 수행한다.
3. A 화면에서 알림 배지/알림 목록 갱신 여부를 확인한다.

기대 결과:

- `SUBSCRIBE /user/queue/notifications` 수신 후 배지/목록 즉시 갱신.

### S-05 REST 401 만료 처리

1. 로그인 후 만료 토큰을 강제 주입하거나 서버에서 401을 반환하도록 만든다.
2. 임의 API 호출(예: 알림 목록 조회)을 수행한다.
3. 자동 로그아웃 및 로그인 화면 이동 여부를 확인한다.

기대 결과:

- `SessionExpiryHandler` 통해 중복 없이 로그아웃 1회 처리.

### S-06 STOMP UNAUTHORIZED 만료 처리

1. STOMP 연결 중 만료 토큰 상황을 재현한다.
2. 오류 큐 또는 STOMP 에러 프레임에 `UNAUTHORIZED`가 수신되게 한다.
3. 자동 로그아웃 여부를 확인한다.

기대 결과:

- REST와 동일한 만료 처리 흐름으로 로그인 화면 이동.

### S-07 백그라운드 푸시 딥링크

1. 앱을 백그라운드 상태로 둔다.
2. `relatedMatchId` 포함 푸시를 발송한다.
3. 푸시 탭 후 이동 화면을 확인한다.

기대 결과:

- `PARTICIPATION_ACCEPTED`, `WAITLIST_*`는 채팅 진입.
- 기타 타입은 매칭 상세 진입.

### S-08 종료 상태 푸시 딥링크

1. 앱을 완전히 종료한다.
2. 동일 조건의 푸시를 보낸다.
3. 푸시 탭 후 초기 진입 화면을 확인한다.

기대 결과:

- `getInitialMessage`로 타입 규칙에 맞는 화면으로 진입.

---

## 5. 판정 규칙

- **PASS**: 체크 항목이 문서 기대 결과와 일치하고, 회피/수동 복구 없이 재현 가능.
- **FAIL**: 기능이 동작하지 않거나 기대 결과와 다름(오동작, 잘못된 라우팅, 누락 포함).
- **BLOCKED**: 외부 요인(백엔드 미배포, Firebase 설정 누락, 테스트 계정 부재 등)으로 검증 자체가 불가.

판정시 메모 작성 규칙:

- PASS: 핵심 증거 1개 이상(로그 키워드, 화면 캡처 시각, 요청 경로) 기록.
- FAIL: 재현 절차(최소 3단계), 기대 결과/실제 결과, 오류 메시지 기록.
- BLOCKED: 막힌 원인 + 해제 조건(예: `google-services.json` 반영 필요) 기록.

---

## 6. 증적 수집 가이드

- 네트워크 증적: `POST /api/notifications/push-tokens`, `POST /api/notifications/push-tokens/revoke`, STOMP CONNECT 헤더 유무.
- 화면 증적: 알림 탭 진입 후 라우팅 결과(채팅/매칭 상세/알림센터) 스크린샷.
- 로그 증적: `UNAUTHORIZED`, 401 응답, STOMP 오류 큐 수신 여부.
- 기록 권장 형식: `YYYY-MM-DD HH:mm / 기기 / 계정 / 시나리오 / 결과`.

---

## 7. 참고

- Phase 문서: [docs/할일/Phase6.md](./할일/Phase6.md)
- Sprint 6 API: [docs/api/Sprint6-API.md](./api/Sprint6-API.md)
