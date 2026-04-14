# OAuth / 클라이언트 ID 설정 (Flutter)

## 코드에 직접 넣지 않는 이유

- 카카오·네이버·Google·Apple **클라이언트 ID**는 공개 정보라도, 저장소에 고정으로 박아 두면 **유출 시 교체·감사가 어렵고**, 실수로 **프로덕션 키가 커밋**될 위험이 큽니다.
- Flutter는 `String.fromEnvironment`로 **빌드 시점**에만 값이 들어가므로, **로컬 파일 + git 제외** 또는 **CI 시크릿**으로 주입하는 방식이 맞습니다.

## Next.js / 백엔드와의 대응

Next의 `NEXT_PUBLIC_*` 값은 **백엔드 `application.yml`·`KAKAO_CLIENT_ID` 등과 같은 OAuth 클라이언트 ID**를 쓰는 것이 좋습니다.  
Flutter에서는 이름만 `NEXT_PUBLIC_` 접두사 없이 `dart-define`으로 넘깁니다.

| Next.js (예시) | Flutter `--dart-define` (권장) | 비고 |
|----------------|-------------------------------|------|
| `NEXT_PUBLIC_KAKAO_CLIENT_ID` | `KAKAO_CLIENT_ID` | 인가 URL `client_id` (보통 **REST API 키**). 예전 키 `KAKAO_NATIVE_KEY`도 동작(하위 호환) |
| — | `KAKAO_NATIVE_APP_KEY` | 카카오 콘솔 **네이티브 앱 키**. `OAUTH_REDIRECT_URI` 비울 때 `kakao{이값}://oauth` 자동 구성 |
| `NEXT_PUBLIC_NAVER_CLIENT_ID` | `NAVER_CLIENT_ID` | 동일 |
| `NEXT_PUBLIC_GOOGLE_CLIENT_ID` | `GOOGLE_CLIENT_ID` | 예전 키 `GOOGLE_OAUTH_CLIENT_ID`도 동작 |
| `NEXT_PUBLIC_APPLE_CLIENT_ID` | `APPLE_CLIENT_ID` | 예전 키 `APPLE_SERVICE_ID`도 동작 |

## 카카오 리다이렉트 URI (중요)

### REST API 키 수정 화면의 「카카오 로그인 리다이렉트 URI」

- 이 입력란은 **`http://` / `https://` 형태만** 받는 경우가 많습니다.
- `com.xxx://...` 나 `kakao...://oauth` 같은 **커스텀 스킴**을 넣으면 **「유효하지 않은 URL」** 로 거절될 수 있습니다 (정상적인 제약입니다).

### 권장 정리

| 대상 | 리다이렉트 예 | 어디에 등록 |
|------|----------------|-------------|
| **Next.js(웹)** | `http://localhost:3000/oauth/callback` | REST API 키 화면의 리다이렉트 URI (또는 Web 플랫폼) |
| **Flutter 모바일(카카오 권장 형식)** | `kakao{네이티브앱키}://oauth` | 카카오 **앱 설정 → 플랫폼 Android / iOS** 쪽 가이드에 맞게 등록 (콘솔 UI는 변경될 수 있음) |
| **레거시 / 타 제공자용** | `com.mintonmatch.app://oauth/callback` | 각 제공자 콘솔·백엔드에 허용 URI로 추가 가능할 때만 |

### 이 저장소의 Flutter 앱 동작 (`AppConfig.fromDartDefines`)

1. `OAUTH_REDIRECT_URI`를 **비우지 않고** 넣으면 → 그 값을 그대로 사용 (Next와 같은 `http://localhost:3000/oauth/callback`도 가능, **Flutter Web** 위주).
2. `OAUTH_REDIRECT_URI`가 비어 있고 **`KAKAO_NATIVE_APP_KEY`**만 있으면 →  
   `OAUTH_REDIRECT_URI` = `kakao{KAKAO_NATIVE_APP_KEY}://oauth`  
   `OAUTH_CALLBACK_SCHEME` = `kakao{KAKAO_NATIVE_APP_KEY}` (자동).
3. 둘 다 없으면 → 예전 기본값 `com.mintonmatch.app://oauth/callback` (카카오 REST 화면에는 보통 등록 불가).

**백엔드** `POST /api/auth/oauth/login`의 `redirectUri`와 **카카오에 실제 등록된 문자열**이 **완전히 같아야** 합니다.

### Android / iOS 딥링크 (카카오 `kakao{네이티브앱키}://oauth` 를 쓸 때)

`flutter_web_auth_2`가 앱으로 돌아오려면 **네이티브 매니페스트의 스킴**이 `OAUTH_CALLBACK_SCHEME`과 같아야 합니다.

- **Android**: [snippets/kakao-deeplink-android.xml](./snippets/kakao-deeplink-android.xml) 내용을 참고해 `AndroidManifest.xml`에 `<intent-filter>`를 추가하고, `kakao여기에네이티브앱키` 를 본인 키로 바꿉니다.
- **iOS**: [snippets/kakao-deeplink-ios.plist](./snippets/kakao-deeplink-ios.plist) 를 참고해 `Info.plist`의 `CFBundleURLSchemes`에 동일 스킴을 추가합니다.

기존 `com.mintonmatch.app` 스킴은 다른 OAuth/테스트용으로 남겨 두었습니다. 카카오만 쓰면 `kakao…` 쪽만 맞춰도 됩니다.

## 네이버 / Google / Apple

- 네이티브 SDK 로그인에서는 웹 `redirect_uri`보다 **플랫폼별 앱 설정**(Android Manifest / iOS Info.plist)이 더 중요합니다.
- **Google/Naver/Kakao**는 앱에서 `socialAccessToken`을 받아 백엔드로 전달합니다.
- 현재 백엔드 기준 **Apple은 authorization code 방식만 지원**하므로, Apple은 별도 웹 플로우를 유지해야 합니다.

## 네이티브 SDK 전용 빌드 변수

`dart-define`은 Dart 런타임 값이고, 네이티브(Android/iOS) SDK 키는 별도 빌드 변수로 넣어야 합니다.

### Android (`android/app/build.gradle.kts`)

- 주입 우선순위: `-PKEY=value` > OS 환경변수 > 기본값
- 사용 키:
  - `KAKAO_OAUTH_SCHEME` (예: `kakao{KAKAO_NATIVE_APP_KEY}`)
  - `NAVER_CLIENT_ID`
  - `NAVER_CLIENT_SECRET`
  - `NAVER_CLIENT_NAME` (기본: `Minton Match App`)

예시:

```bash
./gradlew assembleDebug \
  -PKAKAO_OAUTH_SCHEME=kakao{네이티브앱키} \
  -PNAVER_CLIENT_ID=... \
  -PNAVER_CLIENT_SECRET=... \
  -PNAVER_CLIENT_NAME="Minton Match App"
```

### iOS (`ios/Flutter/*.xcconfig`)

- 기본값 파일: `ios/Flutter/OAuthDefaults.xcconfig` (커밋됨)
- 로컬 오버라이드: `ios/Flutter/OAuth.local.xcconfig` (gitignore)
- 샘플: `ios/Flutter/OAuth.local.xcconfig.example`

## 권장 주입 방법: 로컬 `.env` 파일 (Git 제외)

1. 저장소에 있는 **`dart_defines.oauth.example.env`** 를 복사합니다.

   ```bash
   cp dart_defines.oauth.example.env dart_defines.oauth.local.env
   ```

2. `dart_defines.oauth.local.env` 를 열어 **본인 환경 값**만 채웁니다.  
   이 파일은 **`.gitignore`에 포함**되어 커밋되지 않습니다.

3. 실행 시 한 번에 주입합니다.

   ```bash
   flutter run --dart-define-from-file=dart_defines.oauth.local.env
   ```

4. `--dart-define=KEY=value` 를 추가로 주면 **명령줄이 파일보다 우선**합니다.

## CI / 팀 공유

- 팀원 각자 로컬 `.env` 또는 OS 환경 변수 + 스크립트로 빌드합니다.
- CI에서는 저장소가 아닌 **비밀 변수**에 ID를 넣고, 빌드 단계에서 `--dart-define` 또는 `--dart-define-from-file`로 생성합니다.

## 관련 코드

- 읽기 위치: `lib/core/env/app_config.dart` (`AppConfig.fromDartDefines`)
- 수동 테스트 절차: [Phase1-수동테스트.md](./Phase1-수동테스트.md)
