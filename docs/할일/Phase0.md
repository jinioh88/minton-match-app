# Phase 0 — 프로젝트·아키텍처 기반 (선행)

**이전 Phase**: 없음  
**다음 Phase**: [Phase1.md](./Phase1.md)

**목표**: 빈 템플릿 상태에서 팀 규칙에 맞는 뼈대와 공통 모듈을 만든다.

---

## Step

| Step | 할일 | 산출물·메모 |
|------|------|-------------|
| 0-1 | `pubspec`에 핵심 의존성 추가: `flutter_riverpod`, `hooks_riverpod`, `flutter_hooks`, `dio`, `retrofit`, `freezed`+`json_serializable`, `go_router`(또는 동등 라우팅), `flutter_secure_storage`, `logger` 등. **이미지**: 프로필·코트 사진 등 대비 `cached_network_image`, 아이콘·벡터용 `flutter_svg` | `pubspec.yaml`, `build_runner` 스크립트 |
| 0-2 | 폴더 구조: `lib/core/`(DI, 라우팅, 네트워크, env, theme), `lib/features/<domain>/{presentation,domain,data}/`, `lib/shared/widgets/` | 트리 정리 |
| 0-3 | **환경·Base URL**: `docs/환경설정.md`에 맞춰 dev/prod (`--dart-define` 또는 flavor). 로컬 백엔드 호스트는 **에뮬레이터/시뮬레이터/실기기**별로 다름 → 동 문서의 플랫폼별 URL 안내 준수 | `ApiConfig`, 실행 명령 문서화 |
| 0-4 | **Dio 클라이언트**: Base URL, `Authorization: Bearer`, `ApiResponse` 파싱·공통 에러 매핑(HTTP + `success: false`). **`Interceptor`**: 로깅, **401 시** 토큰 재발급 또는 로그인 플로 유도(백엔드 정책과 일치). 백엔드 에러 본문(예: `{ "code": "E001", "message": "..." }`) ↔ 앱 `Exception`/도메인 에러 타입 매핑 명시 | `core/network` |
| 0-5 | **인증 세션**: 액세스 토큰 저장·갱신(백엔드 정책에 맞춤)·로그아웃 시 삭제 | `SecureStorage` 래퍼 |
| 0-6 | **라우팅·쉘**: 로그인 전/후 분기(가드), 하단 탭(홈·채팅·프로필 등) 자리 | `go_router` + `ShellRoute` 등 |
| 0-7 | 공통 UI: 로딩·스낵바/토스트·에러 위젯, 빈 목록 | `shared/widgets` |
| 0-8 | **테마 시스템**: `lib/core/theme/`에 **AppTheme**(`ThemeData`) — 서비스 메인 컬러, 공통 타이포(제목·본문), 버튼 스타일(Primary, Outline 등) | `core/theme` |

---

## 완료 조건

- 앱이 기동되고, 임의 보호 API 호출 시 토큰 헤더가 붙으며, 401 시 로그인 플로로 유도 가능한 구조.
- (권장) `Interceptor`·에러 매핑·테마가 문서와 코드에 맞게 한 곳에서 일관되게 동작한다.

---

[← 목차](./README.md)
