# Phase 3 — Sprint 3 대응: 참여·대기열·방장관리·매칭수정 (B4)

**이전 Phase**: [Phase2.md](./Phase2.md)  
**다음 Phase**: [Phase4.md](./Phase4.md)

**API**: `docs/api/Sprint3-API.md` (특히 `§7 매칭 수정`, 하단 `변경 사항`)

---

## 목표

- 참여 신청 → 방장 수락/거절 → 확정, 취소/대기열/예약 오퍼까지 end-to-end 동작
- 방장 신청 관리(수락/거절 + 선택 KICK), 매칭 수정(partial update)까지 UI 연동

---

## Step

| Step | 할일 | 백로그 | 상태 |
|------|------|--------|------|
| 3-1 | 타입/DTO/API 확장: 참여 상태, 내 참여 요약, 신청 목록, updateMatch(partial) | B4-1~5 | 완료 |
| 3-2 | 참여자 UI: 참여 신청(멘트), 상태 표시, 취소 버튼, REJECTED 재신청 | B4-1, B4-2, B4-4 | 완료 |
| 3-3 | RESERVED 오퍼 UI: 수락/거절, offerExpiresAt 카운트다운, 1분 미만 경고 | B4-5 | 완료 |
| 3-4 | 방장 신청 관리: 신청 목록 정렬(PENDING→RESERVED→WAITING), 수락/거절 | B4-3 | 완료 |
| 3-5 | 방장 확장: 확정 참여자 KICK(선택), 결과 반영/갱신 | B4-3 | 완료 |
| 3-6 | 매칭 수정: 방장+RECRUITING에서 partial update, `maxPeople >= currentPeople` 검증 | B4-3 | 완료 |
| 3-7 | 공통 에러/상태 UX: OFFER_EXPIRED 자동 새로고침, 에러코드 메시지 매핑 | B4-1~5 | 완료 |

---

## API 범위 체크

| 메서드 | 경로 | 용도 |
|--------|------|------|
| POST | `/api/matches/{matchId}/participants` | 참여/대기 신청 |
| PATCH | `/api/matches/{matchId}/participants/{participationId}` | 방장: ACCEPT / REJECT / KICK |
| DELETE | `/api/matches/{matchId}/participants/me` | 참여 취소 |
| POST | `/api/matches/{matchId}/participants/me/accept-offer` | RESERVED 수락(긴급 모드 WAITING 포함 가능) |
| POST | `/api/matches/{matchId}/participants/me/reject-offer` | RESERVED 거절 |
| GET | `/api/matches/{matchId}/participants/applications` | 방장 신청 목록 |
| PATCH | `/api/matches/{matchId}` | 매칭 수정(partial update) 및 상태 변경 스펙 확인 필요 |

---

## 핵심 정책 메모

- **정원 정책**: `maxPeople`는 방장 포함, 수정 시 반드시 `maxPeople >= currentPeople`
- **대기열 하이브리드**: 순차 RESERVED(15분) → 타임아웃 다음 순번 → 긴급 선착순(2시간 미만)
- **REJECTED 재신청**: `canApply=true`면 하단 신청 버튼 다시 노출
- **OFFER_EXPIRED UX**: 토스트만 띄우지 않고 자동 상세 재조회 후 상태 UI 전환

---

## 백엔드 보완 요청(연동 편의)

- `GET /api/matches/{matchId}`에 `serverTime` 또는 `serverTimeOffset` 제공 요청
- 동일 응답에 `isEmergencyMode` 제공 요청
- `GET .../applications` 항목에 `level`, `interestRegions` 제공 요청

미반영 시 프론트 fallback:
- `serverTime` 없음: 클라이언트 시간 기준 카운트다운
- `isEmergencyMode` 없음: `WAITING + hasWaitingOffer` 조합으로 제한적 처리
- `level/interestRegions` 없음: nickname/rating/applyMessage 중심 카드 표시

---

## 완료 조건

- [x] 참여 신청(멘트) → PENDING/WAITING 반환 및 상태 표시
- [x] 방장 신청 목록 수락/거절 동작
- [x] 참여 취소 → 예약 오퍼 전환 흐름 반영(백엔드 동작 포함)
- [x] RESERVED 수락/거절 + 카운트다운 + 1분 미만 시각적 피드백
- [x] 긴급 모드(2시간 미만) 참여 기회 UI 처리
- [x] OFFER_EXPIRED 시 자동 새로고침 + 상태 UI 전환
- [x] 방장 KICK(선택) 및 목록/정원 갱신
- [x] 방장 매칭 수정(partial update), RECRUITING/권한/정원 검증
- [x] 주요 에러코드 사용자 친화 메시지 매핑(FORBIDDEN, BAD_REQUEST 포함)

---

[← 목차](./README.md)
