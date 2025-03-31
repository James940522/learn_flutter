# app_main 패키지

이 패키지는 Flutter 학습 앱의 메인 애플리케이션 코드를 포함하고 있습니다. UI 컴포넌트와 화면 구성을 담당합니다.

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

### main.dart

앱의 진입점으로, `runApp()` 함수를 통해 루트 위젯을 실행합니다.

### app/app.dart

앱의 루트 위젯인 `MyApp`을 포함하며, 테마 설정과 홈 페이지 지정을 담당합니다.

### pages/home/home_page.dart

하단 네비게이션 바를 통해 4개의 메인 페이지 간 전환을 관리하는 페이지입니다.

### pages/basic_widgets/basic_widgets_page.dart

Flutter의 기본 UI 위젯들(텍스트, 이미지, 아이콘)을 소개하는 페이지입니다.

### pages/layout/layout_page.dart

Flutter의 레이아웃 위젯들(Row, Column, Stack)을 소개하는 페이지입니다.

### pages/interactive/interactive_page.dart

사용자 입력을 처리하는 위젯들(버튼, 슬라이더, 텍스트 입력, 스위치)과 상태 관리를 소개하는 페이지입니다.

### pages/core_feature/core_feature_page.dart

외부 패키지(core)의 비즈니스 로직을 활용하는 방법을 소개하는 페이지입니다.

## React 개발자를 위한 학습 포인트

- **StatelessWidget** vs **StatefulWidget**의 구분 및 사용법
- **setState()**를 통한 상태 관리 방식
- 위젯 트리 구조와 레이아웃 시스템
- 생명주기 메서드(initState, dispose)의 활용

## 의존성

이 패키지는 다음 패키지에 의존합니다:

- `flutter`: Flutter 프레임워크
- `core`: 프로젝트 내부 패키지로 비즈니스 로직 제공
