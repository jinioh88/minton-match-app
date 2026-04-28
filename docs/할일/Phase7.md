# Phase 7 — Sprint 7 대응: 마이페이지 집계 · 내역 · 후기 허브 (B9-1~4)

**이전 Phase**: [Phase6.md](./Phase6.md)  
**다음 Phase**: [Phase8.md](./Phase8.md)

**API**: `docs/api/Sprint7-API.md`

> 스프린트 합의: **`GET /api/users/me`** 에는 **개설·참여 건수 집계**만. 목록은 **별도 API·화면**.  
> **B9-5 ~ B9-7**(공지·고객센터·계정)은 동 스프린트에서 **제외** 가능 — [Phase8.md](./Phase8.md)로 이어진다.

---

## Step

| Step | 상태 | 할일 | 백로그 |
|------|------|------|--------|
| 7-1 | 완료 | 마이페이지 상단: **개설 매칭 수 / 확정 참여 수** 표시 | B9-1 |
| 7-2 | 완료 | **내가 연 매칭** 목록 화면(상태·기간 필터는 API 스펙 따름) | B9-2 |
| 7-3 | 완료 | **내가 참여한 매칭** 목록 화면 | B9-3 |
| 7-4 | 완료 | **후기 허브**: 작성함·받은 후기·작성 대기(미작성) — 익명 규칙 재사용 | B9-4 |

### 진행 메모 (2026-04-28)

- `GET /api/users/me` 집계(`hostedMatchCount`, `participatedMatchCount`)를 마이페이지 활동 요약 카드에 반영.
- `GET /api/users/me/matches/hosted`, `GET /api/users/me/matches/participated` 연동 및 전용 목록 화면 추가.
- `GET /api/users/me/reviews/written`, `GET /api/users/me/reviews/pending` 연동 및 후기 허브(작성함/받은 후기/작성 대기) 구성.
- 마이페이지 메뉴에서 각 화면으로 라우팅 연결.

---

## 완료 조건

- 마이페이지 숫자와 각 목록이 API와 일치.

---

[← 목차](./README.md)
