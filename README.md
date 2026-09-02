# SecAccu (INV_SecAccu)

서버 시간 기반 오버레이 시계 Android 앱 (디버그 빌드).

## 앱 정보

| 항목 | 값 |
|------|-----|
| 패키지명 | `com.secaccu.clock.debug` |
| 버전 | 1.0.0-debug (versionCode: 1) |
| minSdk | 26 |
| targetSdk | 34 |

## 프로젝트 구조

폰에서 추출한 APK를 **apktool**로 디컴파일한 프로젝트입니다.

```
SecAccu/
├── SecAccu.apk          # 원본 APK (폰에서 추출)
├── AndroidManifest.xml
├── apktool.yml
├── res/                 # 리소스
├── smali/               # Dalvik 바이트코드 (smali)
├── smali_classes2~4/
├── original/
└── unknown/
```

## 빌드 방법

```bash
apktool b . -o SecAccu-built.apk
```

서명 후 설치:

```bash
adb install -r SecAccu-built.apk
```

## 주요 컴포넌트

- `com.secaccu.clock.MainActivity` — 메인 액티비티
- `com.secaccu.clock.OverlayClockService` — 오버레이 시계 포그라운드 서비스
- `com.secaccu.clock.SecAccuApp` — Application 클래스

## 출처

집에서 개발한 앱을 ADB로 추출하여 apktool 디컴파일 (2026-09-02).
