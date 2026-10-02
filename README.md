# SecAccu (INV_SecAccu)

서버 시간 기반 오버레이 시계 · 지정 시각 알람 · 자동 클릭 Android 앱 (디버그 빌드).

## 앱 정보

| 항목 | 값 |
|------|-----|
| 패키지명 | `com.secaccu.clock.debug` |
| 버전 | 1.0.0-debug (versionCode: 1) |
| minSdk | 26 |
| targetSdk | 34 |
| 저장소 | **Public** — https://github.com/bossxor/INV_SecAccu |
| 최신 릴리스 | [v1.1.0](https://github.com/bossxor/INV_SecAccu/releases/tag/v1.1.0) |

## 다운로드 (지인 공유용)

로그인 없이 APK 바로 받기:

**https://github.com/bossxor/INV_SecAccu/releases/download/v1.1.0/SecAccu-signed.apk**

```bash
adb install -r SecAccu-signed.apk
```

## 주요 기능

- **서버시간 동기화** — 티켓팅/NTP 등 시간 서버 선택 후 맞춤
- **오버레이 시계** — 다른 앱 위에 서버 시각 표시 (길게 누르면 앱으로 복귀)
- **접속 시각 지정** — 매시 정각 또는 `13:30`처럼 원하는 시:분 설정
- **접속 알람** — 지정 시각 N초 전부터 초마다 삑, 해당 시각에 큰 알림
- **자동 클릭** — 측정한 RTT로 누를 시각을 계산: 서버에 정각 도착 = 정각 − RTT/2, 실제 누름 = 정각 − (RTT/2 × 반영 비율, 기본 50%) + 보정(ms)
- **위치 지정** — 앱이 뒤로 숨고 대상 앱 위에서 지정. 원을 드래그하거나 ◀▲▼▶로 1px씩 이동, `완료`로 복귀
- **연습 탭** — 10초 단위 정각에 지정 위치를 탭해 실제 누른 시각 오차를 기록(최근 5건)
- **자동 보조** — 5분 전 알림음, 1분 전 서버시간 자동 재동기화, 접근성·오버레이·배터리·동기화 점검 표시

## 사용 팁

| 동작 | 설명 |
|------|------|
| 오버레이 켜기 | 작은 시계를 띄우고 앱은 백그라운드로 보냄 |
| 오버레이 길게 누르기 | 앱 화면으로 돌아옴 |
| **앱 완전 종료** | 최근 앱 목록에서 SecAccu를 밀어 제거하면 **오버레이 시계 + 클릭 위치 표시**가 함께 사라짐 |
| 앱 종료/뒤로가기 | 자동 클릭도 함께 해제됨 |
| 홈만 누른 경우 | 다른 앱 사용 중이므로 오버레이는 **유지**됨 (의도된 동작) |

## 프로젝트 구조

폰에서 추출한 APK를 **apktool**로 디컴파일한 프로젝트입니다.

```
SecAccu/
├── SecAccu.apk              # 원본 APK (폰에서 추출)
├── SecAccu-signed.apk       # 서명된 설치용 APK (배포)
├── AndroidManifest.xml
├── apktool.yml
├── res/                     # 리소스
├── smali/ … smali_classes4/ # Dalvik 바이트코드
├── tools/
│   └── PressTimingTest.java # 접속 시각/알람 타이밍 단위 테스트
├── original/
└── unknown/
```

## 빌드 · 서명 · 설치

```bash
# 1) apktool 빌드 (UNC면 드라이브 매핑 권장)
apktool b . -o SecAccu-built.apk

# 2) apksigner 서명 (v2/v3 필요)
apksigner sign --ks secaccu-debug.jks --ks-key-alias secaccu \
  --ks-pass pass:android --key-pass pass:android \
  --out SecAccu-signed.apk SecAccu-built.apk

# 3) 설치
adb install -r SecAccu-signed.apk
```

`SecAccu-built.apk`(미서명)는 `.gitignore` 대상입니다. 배포·설치는 **SecAccu-signed.apk**를 사용하세요.

## 단위 테스트

```bash
cd tools
javac PressTimingTest.java
java PressTimingTest
```

성공 시 `ALL PASSED`가 출력됩니다.

## 주요 컴포넌트

| 클래스 | 역할 |
|--------|------|
| `MainActivity` | 메인 UI, 동기화·알람·자동클릭 설정 |
| `OverlayClockService` | 오버레이 시계 (`stopWithTask`, 종료 시 UI 정리) |
| `ExactHourAlarm` | 지정/정각 알람 · 경고 진행도 |
| `PressHintFormatter` | 다음 누르기 시각 계산 |
| `AutoClickEngine` / `AutoClickService` | 지정 시각 자동 탭 |
| `AutoClickOverlay` | 클릭 위치 표시 · 위치 지정 UI |
| `AlarmTargetUi` | 접속 시각(정각/시:분) 선택 UI |
| `SecAccuApp` | Application |

## 출처 · 변경 요약

- 집에서 개발한 앱을 ADB로 추출하여 apktool 디컴파일 (2026-09-02)
- 서버시간 맞추기 버튼 가독성 · 시간 서버 칩 그리드 UI
- 접속 시각 지정 + 알람/자동클릭 연동
- 오버레이 `VerifyError` 수정 (render 레지스터 충돌)
- 앱 종료(최근 앱에서 제거) 시 오버레이·클릭 위치 표시 함께 제거 (`onTaskRemoved` / `stopWithTask`)
