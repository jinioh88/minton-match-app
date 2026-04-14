# Phase 1 — Sprint 1 대응: OAuth2 · 프로필 (백로그 B2)

**이전 Phase**: [Phase0.md](./Phase0.md)  
**다음 Phase**: [Phase2.md](./Phase2.md)

**API**: `docs/api/Sprint1-API.md`

---

## Step

| Step | 할일 | 백로그 |
|------|------|--------|
| 1-1 | 소셜 로그인 UX: 카카오/네이버/구글/애플 — **네이티브 SDK + socialAccessToken** 방식으로 통일, 카카오 Talk→Account 폴백 및 플랫폼 키 주입 정리 | B2-1 |
| 1-2 | 최초 가입 시 **추가 프로필 입력**(닉네임, 관심 지역 최대 2곳, 급수 등 API 필드에 맞춤) | B2-2, B2-6 |
| 1-3 | **내 프로필** 조회·수정 화면 | B2-4 |
| 1-4 | **타인 프로필** 화면(매칭·신청 목록에서 진입) | B2-5 |

---

## 완료 조건

- JWT로 보호된 API 호출 가능, 내/타인 프로필 표시·수정 가능.
- OAuth는 제공자 네이티브 SDK 토큰(`socialAccessToken`) 기반으로 백엔드 `POST /api/auth/oauth/login` 연동.
- Android/iOS 네이티브 설정(카카오 스킴·네이버 키)과 SHA-1(구글/네이버 콘솔) 검증 절차 문서화.

---

[← 목차](./README.md)
