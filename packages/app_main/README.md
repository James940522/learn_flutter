# app_main 패키지

Flutter 학습 앱의 메인 애플리케이션 코드를 포함하고 있습니다. UI 컴포넌트와 화면 구성을 담당합니다.

## 구조

```
lib/
├── main.dart     # 앱 진입점
├── app/          # 앱 초기화 및 설정
├── pages/        # 페이지 컴포넌트
│   ├── home/               # 홈 페이지 (네비게이션 관리)
│   ├── basic_widgets/      # 기본 위젯 예시 페이지
│   ├── layout/             # 레이아웃 위젯 예시 페이지
│   ├── interactive/        # 사용자 상호작용 위젯 페이지
│   └── core_feature/       # 외부 패키지 활용 페이지
├── shared/       # 공유 유틸리티
└── widgets/      # 재사용 위젯
```

## 주요 컴포넌트

### 메인 앱 (lib/app/app.dart)

- Flutter 앱의 루트 위젯 (`MyApp`)
- 테마, 라우팅 등 앱 수준 설정
- Material 디자인 기반 구조

### 홈 페이지 (lib/pages/home/home_page.dart)

- 하단 네비게이션 바를 통해 4개의 페이지 간 전환
- StatefulWidget으로 구현하여 선택된 페이지 상태 관리

### 기본 위젯 페이지 (lib/pages/basic_widgets/basic_widgets_page.dart)

- 텍스트, 이미지, 아이콘 등 기본 UI 위젯 소개
- StatelessWidget으로 구현된 정적 페이지

### 레이아웃 페이지 (lib/pages/layout/layout_page.dart)

- Row, Column, Stack 등 레이아웃 위젯 소개
- 복잡한 UI 구성을 위한 레이아웃 패턴 제시

### 상호작용 페이지 (lib/pages/interactive/interactive_page.dart)

- 버튼, 슬라이더, 텍스트 입력, 스위치 등 상호작용 위젯 소개
- setState()를 통한 상태 관리 기법 시연

### 핵심 기능 페이지 (lib/pages/core_feature/core_feature_page.dart)

- core 패키지의 CounterManager 및 Calculator 활용
- 외부 상태 관리 및 비즈니스 로직 통합 방법 소개

## React 개발자를 위한 학습 포인트

| React 개념 | Flutter 대응 | 예시 위치 |
| --- | --- | --- |
| 함수형 컴포넌트 | StatelessWidget | basic_widgets_page.dart, layout_page.dart |
| 상태가 있는 컴포넌트 | StatefulWidget | home_page.dart, interactive_page.dart |
| useState | setState() | interactive_page.dart |
| useEffect | initState(), dispose() | core_feature_page.dart |
| Context API | ChangeNotifier | core_feature_page.dart (CounterManager 활용) |

## 시작하기

1. Flutter SDK 설치: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
2. 의존성 설치:
   ```
   flutter pub get
   ```
3. 앱 실행:
   ```
   flutter run
   ```

## 추가 학습 자료

- [Flutter 공식 문서](https://docs.flutter.dev/)
- [Flutter 위젯 카탈로그](https://docs.flutter.dev/development/ui/widgets)
- [Flutter 샘플 앱](https://docs.flutter.dev/cookbook)
