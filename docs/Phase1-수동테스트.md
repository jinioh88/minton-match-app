# Phase 1 수동 테스트 가이드

OAuth2·프로필(로그인, 프로필 설정, 마이페이지, 타인 프로필)을 직접 확인할 때의 준비 사항과 시나리오입니다. API 필드·에러 코드는 [api/Sprint1-API.md](./api/Sprint1-API.md)를 함께 보세요.

---

## 1. 사전 준비

### 1.1 백엔드

- Sprint 1 명세에 맞는 API가 동작 중이어야 합니다.
- 기본 베이스 URL(앱 `dev` 기본값): `http://localhost:8080`  
  - 실제 요청 경로는 `/api/...` 입니다 (예: `POST http://localhost:8080/api/auth/oauth/login`).

### 1.2 기기별 API 주소

| 실행 환경 | 권장 `API_BASE_URL` 예시 |
|-----------|---------------------------|
| iOS 시뮬레이터 / 데스크톱 | `http://localhost:8080` 또는 `http://127.0.0.1:8080` |
| Android 에뮬레이터 | `http://10.0.2.2:8080` (에뮬레이터에서 호스트 머신의 localhost) |
| 실제 기기(USB/와이파이) | PC의 LAN IP (예: `http://192.168.0.10:8080`) |

HTTP를 쓰는 경우 Android 9+에서 **cleartext** 허용이 필요할 수 있습니다. 막히면 네이티브 설정을 확인하세요.

### 1.3 OAuth 리다이렉트 URI (앱·콘솔·백엔드 일치)

**카카오**는 REST API 키 화면의 리다이렉트 입력란에 **`http(s)://`만** 허용되는 경우가 많습니다. 모바일 앱은 보통 **`kakao{네이티브앱키}://oauth`** 를 쓰고, 콘솔 **앱 플랫폼(Android/iOS)** 쪽에 등록합니다. 상세는 [OAuth-환경변수.md](./OAuth-환경변수.md)를 참고하세요.

이 프로젝트의 `AppConfig` 동작 요약:

| 조건 | 리다이렉트 URI | 콜백 스킴 |
|------|----------------|-----------|
| `OAUTH_REDIRECT_URI` 지정 | 그대로 사용 | `OAUTH_CALLBACK_SCHEME` 없으면 URI에서 추출 |
| 비움 + `KAKAO_NATIVE_APP_KEY` 있음 | `kakao{키}://oauth` | `kakao{키}` |
| 둘 다 없음 (기본) | `com.mintonmatch.app://oauth/callback` | `com.mintonmatch.app` |

백엔드 `POST /api/auth/oauth/login`의 `redirectUri`와 **문자열이 완전히 같아야** 합니다.

**네이티브 딥링크**

- `kakao…://oauth` 를 쓰는 경우: [snippets/kakao-deeplink-android.xml](./snippets/kakao-deeplink-android.xml), [snippets/kakao-deeplink-ios.plist](./snippets/kakao-deeplink-ios.plist) 를 참고해 Manifest / Info.plist 를 수정합니다.
- `com.mintonmatch.app://…` 만 쓰는 경우: 저장소에 포함된 기존 Android/iOS 설정을 유지합니다.

### 1.4 빌드 시 주입 (`--dart-define`)

소셜 로그인 버튼은 **제공자별 클라이언트 ID**가 비어 있으면 안내 메시지 후 실패합니다. **실제 ID 값은 Git에 올리지 말고** 로컬 파일이나 CI 비밀 변수로만 주입하세요. 상세는 [OAuth-환경변수.md](./OAuth-환경변수.md)를 참고합니다.

**권장**: 예시 파일을 복사해 로컬 전용 `.env`를 만든 뒤 `from-file`로 실행합니다.

```bash
cd minton_match_app
cp dart_defines.oauth.example.env dart_defines.oauth.local.env
# dart_defines.oauth.local.env 에 Next.js·백엔드와 동일한 클라이언트 ID 입력 (이 파일은 .gitignore 됨)

flutter run --dart-define-from-file=dart_defines.oauth.local.env
```

명령줄만 쓸 때 예시 (Android 에뮬레이터 + 카카오만):

```bash
flutter run \
  --dart-define=API_BASE_URL=http://10.0.2.2:8080 \
  --dart-define=KAKAO_CLIENT_ID=여기에_카카오_클라이언트_ID
```

선택 인자 예시 (백엔드·Next와 이름 맞춤):

| 인자 | 설명 |
|------|------|
| `APP_ENV` | `dev`(기본) / `prod` 등 |
| `API_BASE_URL` | 위 표 참고 |
| `OAUTH_REDIRECT_URI` | 기본과 다를 때만 |
| `OAUTH_CALLBACK_SCHEME` | 기본과 다를 때만 |
| `KAKAO_CLIENT_ID` | 카카오 인가용 `client_id` (보통 REST API 키, `KAKAO_NATIVE_KEY`도 하위 호환) |
| `KAKAO_NATIVE_APP_KEY` | 카카오 **네이티브 앱 키** (`OAUTH_REDIRECT_URI` 비울 때 `kakao{키}://oauth` 자동) |
| `NAVER_CLIENT_ID` | 네이버 |
| `GOOGLE_CLIENT_ID` | Google (`GOOGLE_OAUTH_CLIENT_ID`도 하위 호환) |
| `APPLE_CLIENT_ID` | Apple (`APPLE_SERVICE_ID`도 하위 호환) |

VS Code / Android Studio Run configuration에도 동일하게 넣을 수 있습니다.

### 1.5 헬스 체크 (선택)

백엔드가 떠 있는지 확인:

```bash
curl -s http://localhost:8080/api/health
```

---

## 2. 시나리오별 테스트

### 2.1 Step 1-1 — 소셜 로그인

**목표**: 인가 코드로 백엔드 로그인 후 JWT 저장, `profileComplete`에 따른 분기.

1. 앱 실행 → 스플래시 후 **로그인 화면**으로 이동하는지 확인합니다. (토큰이 없을 때)
2. 사용할 소셜 버튼(예: 카카오)을 누릅니다.
3. 브라우저/커스텀 탭에서 로그인·동의 후 **앱으로 복귀**하는지 확인합니다.
4. 백엔드가 정상이면:
   - `user.profileComplete == false` 인 신규/미완료 계정 → **`/profile-setup`** (프로필 설정)으로 가는지
   - `profileComplete == true` 인 계정 → **`/home`** 으로 가는지  
   확인합니다.

**실패 시 점검**

- 스낵바/로그: `KAKAO_NATIVE_KEY` 등 미설정, OAuth 콘솔 리다이렉트 불일치, 백엔드 `OAUTH_INVALID` 등
- 네트워크: `API_BASE_URL`이 기기에서 실제로 닿는지

---

### 2.2 Step 1-2 — 프로필 설정 (신규)

**목표**: 닉네임(디바운스 중복 확인), **관심 지역 1·2(둘 다 필수, 서로 달라야 함)**, 급수·라켓 등 → `PATCH /api/users/me` → 홈.

1. `/profile-setup`에서 닉네임을 입력합니다. 잠시 후 **사용 가능/불가** 문구가 뜨는지 확인합니다.
2. 관심 지역 1, 관심 지역 2를 **서로 다른** 값으로 선택합니다. (같으면 검증 메시지)
3. 자칭 급수·라켓(필수)·플레이 스타일(선택)을 입력합니다.
4. **프로필 완료** 후 **`/home`** 으로 이동하는지 확인합니다.
5. 앱을 완전히 종료 후 다시 켜도 **로그인 유지**되고, 다시 프로필 설정으로 튕기지 않는지 확인합니다. (`profileComplete` 플래그 저장)

---

### 2.3 Step 1-3 — 마이페이지 (내 프로필)

**목표**: `GET /api/users/me`, 수정 후 `PATCH`, 새로고침, 로그아웃.

1. 하단 탭에서 **프로필(마이페이지)** 로 이동합니다.
2. 닉네임·급수·관심 지역·라켓·매너 점수·페널티·(있으면) 방장/참여 횟수가 표시되는지 확인합니다.
3. 앱바 **새로고침**으로 다시 불러와지는지 확인합니다.
4. **프로필 수정** → 값 변경 후 **저장** → 읽기 화면에 반영되는지 확인합니다.
5. **로그아웃** 후 로그인 화면으로 돌아가는지 확인합니다.

---

### 2.4 Step 1-4 — 타인 프로필

**목표**: `GET /api/users/{userId}` (비로그인 허용), UI에서 매너·페널티 강조, 홈에서 진입.

1. **로그아웃** 상태에서 브라우저/딥링크 대신, 가능하면 개발 중에는 코드로 진입하거나(아래 참고) 로그인 후 테스트합니다.
2. **홈** 탭 예시 목록에서 행 또는 아바타를 눌러 **`/users/1`**, **`/users/2`** 등으로 이동하는지 확인합니다.
3. 타인 프로필 화면에 **수정 버튼이 없고**, **매너 점수·페널티**가 강조되는지 확인합니다.
4. 백엔드에 해당 `userId`가 없으면 오류 UI가 나오는지 확인합니다.

**로그아웃 상태에서 타인 프로필 URL 직접 열기**

- `go_router` redirect상 `/users/:id`는 비로그인 허용입니다.  
  개발 시에는 임시로 스플래시 직후 해당 경로로 `initialLocation`을 바꾸거나, 로그인 화면에서 디버그용 버튼을 두는 식으로 확인할 수 있습니다. (배포 전 제거 권장)

---

## 3. 빠른 체크리스트

- [ ] `API_BASE_URL`이 실행 기기에서 백엔드에 연결됨  
- [ ] OAuth 리다이렉트 URI가 앱·제공자 콘솔·백엔드에서 일치  
- [ ] 로그인 성공 → `profileComplete`에 따라 `/profile-setup` 또는 `/home`  
- [ ] 프로필 설정: 닉네임 중복 검사, 지역 1·2 필수·상이, 완료 후 홈  
- [ ] 마이페이지: 조회·수정·새로고침·로그아웃  
- [ ] 홈에서 타인 프로필 이동·매너/페널티 표시  

---

## 4. 참고

- API 상세: [docs/api/Sprint1-API.md](./api/Sprint1-API.md)  
- Phase 백로그: [docs/할일/Phase1.md](./할일/Phase1.md)  
- 코드 생성 변경 후: `dart run build_runner build --delete-conflicting-outputs`

Google/Apple 로그인은 PKCE·클라이언트 유형(웹/네이티브) 정책에 따라 추가 설정이 필요할 수 있습니다. 한 제공자(예: 카카오)만 먼저 끝까지 통과시키는 것을 권장합니다.
