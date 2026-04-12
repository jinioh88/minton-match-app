# 민턴 매칭 — Flutter 앱 개발 할일 (Phase 목차)

> **목적**: 기존 Spring Boot API·React 웹과 정합되는 **모바일(Flutter) 클라이언트**를 단계적으로 완성한다.  
> **참조**: `docs/민턴_요구사항분석문서통합.md`, `docs/민턴_제품백로그.md`, `docs/민턴_스프린트플래닝통합.md`, `docs/api/Sprint1-API.md` ~ `Sprint8-API.md`, `docs/환경설정.md`  
> **코딩 규칙**: `.cursor/rules/flutter-minton-match.mdc` (계층형 `lib/features/[domain]/`, presentation · domain · data, Riverpod, Dio+Retrofit, Freezed 등)

---

## 진행 원칙

- **한 번에 한 Step**만 구현·완료 표시 후, 사용자 승인을 받고 다음 Step으로 진행한다.
- API 계약은 **`docs/api`** 스프린트별 문서를 단일 진실 원천으로 삼는다. (Base URL·공통 응답·에러 `code` 포함)
- **백엔드 미구현** 항목(제품 백로그 ⬜)은 UI 스켈레톤·목(Mock) 또는 “준비 중” 처리로 두고, API 준비 시 연동한다.

---

## Phase별 문서

| Phase | 문서 | 대응 스프린트(기획) | 핵심 산출 |
|-------|------|---------------------|-----------|
| 0 | [Phase0.md](./Phase0.md) | (선행) | DI·네트워크·라우팅·공통 UI |
| 1 | [Phase1.md](./Phase1.md) | Sprint 1 | 로그인·프로필 |
| 2 | [Phase2.md](./Phase2.md) | Sprint 2 | 업로드·매칭 CRUD UI |
| 3 | [Phase3.md](./Phase3.md) | Sprint 3 | 참여·대기열 |
| 4 | [Phase4.md](./Phase4.md) | Sprint 4 | 종료·후기·패널티 |
| 5 | [Phase5.md](./Phase5.md) | Sprint 5 | 채팅·인앱 알림 |
| 6 | [Phase6.md](./Phase6.md) | Sprint 6 | 푸시·WS·폴리싱 |
| 7 | [Phase7.md](./Phase7.md) | Sprint 7 | 마이페이지·내역·후기 허브 |
| 8 | [Phase8.md](./Phase8.md) | 후속 | 공지·계정·Sprint 8 소셜 등 |

---

## 요구사항·백로그와의 정합 메모

- **관심 지역**: 제품 백로그·요구사항 Phase 2는 **최대 2곳**; 본문 일부에 “한 곳만” 표현이 있으면 **백로그·API**를 기준으로 구현한다.
- **알림**: Sprint 5는 **인앱+폴링** 중심; “실시간 푸시”는 Phase 6 + 인프라와 맞춘다 (`민턴_요구사항분석문서통합.md` TODO와 동일 취지).
- **매칭 수정**: `RECRUITING`에서만, `maxPeople` 하한은 `currentPeople` — 서버 검증과 동일하게 클라이언트에서도 안내.

---

*문서 버전: Phase 분리 (2026-04-12). API·백로그 변경 시 각 Phase 파일과 본 README를 같이 갱신한다.*
