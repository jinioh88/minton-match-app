# Phase 4 — Sprint 4 대응: 종료 · 후기 · 패널티 (B5)

**이전 Phase**: [Phase3.md](./Phase3.md)  
**다음 Phase**: [Phase5.md](./Phase5.md)

**API**: `docs/api/Sprint4-API.md`

**도메인 규칙**: `docs/민턴_요구사항분석문서통합.md` — FINISHED 전제, 후기 **상호 익명·공개 시점**, `rating_score` 표시(0=미평가), 패널티·제재 필드 노출.

---

## Step

| Step | 상태 | 할일 | 백로그 |
|------|------|------|--------|
| 4-1 | 완료 | 방장: 매칭 **종료(FINISHED)** 확정(백엔드 자동 종료 정책과 병행) | B5-1 전제 |
| 4-2 | 완료 | 후기 작성: 3단계 좋아요, 점수, 해시태그 | B5-1, B5-2 |
| 4-3 | 완료 | 후기 목록·상세: **마스킹/공개 규칙**에 맞춘 필드 표시 | B5-3 |
| 4-4 | 완료 | 방장: 노쇼/지각 등 패널티 체크 UI | B5-4 |
| 4-5 | 완료 | 프로필·상세에 패널티 이력 및 `participation_banned_until` / `suspended_until` 안내 | B5-5, 제재 정책 |
| 4-6 | 완료 | 참여 신청 시 제한/정지면 서버 메시지를 사용자 친화적으로 표시 | B5-5 |

---

## 완료 조건

- 종료 후 후기 플로우와 익명 규칙이 깨지지 않음.
- Step 4-1 ~ 4-6이 프론트 기준 구현 완료되어 Sprint4 API 연동 가능 상태.

---

## 검증 시나리오

- 4-1 종료: 방장 + `CLOSED` + 시작시각 경과 매칭에서 `모임 종료` 버튼 노출, 종료 후 `status=FINISHED` 반영, 조건 불충족 시 `INVALID_MATCH_STATUS` 안내 확인.
- 4-2 후기 작성: `FINISHED` 매칭에서 `reviewPendingUserIds` 대상에게만 작성 진입 가능, 감정/점수/해시태그/상세 제출 성공, 중복 시 `DUPLICATE_REVIEW` 확인.
- 4-3 후기 목록 마스킹: `contentRevealed=false`에서 작성자/점수/내용 숨김, `contentRevealed=true`에서 reviewer/score/hashtags/detail 노출 확인.
- 4-4 패널티 체크 UI: 방장 + `FINISHED`에서 참여자별 패널티 부여(`NO_SHOW`, `LATE`) 가능, 동일 `(userId,type)` 중복 부여 방지 확인.
- 4-5 제재/이력 노출: 마이페이지 제재 상태(`accountStatus`, `participationBannedUntil`, `suspendedUntil`) 노출, 프로필 패널티 이력/주의 배지 노출 확인.
- 4-6 참여 신청 제재 메시지: `USER_PARTICIPATION_BANNED`, `USER_SUSPENDED`, `USER_BANNED` 각각 사용자 친화 문구 표시 확인.

---

[← 목차](./README.md)
