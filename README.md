# Flutter 학습 앱

Flutter와 Dart 학습을 위한 예제 애플리케이션입니다. React 개발자 관점에서 Flutter를 배우기 위한 코드가 구현되어 있습니다.

## 프로젝트 구조

```
learn_flutter/
├── packages/
│   ├── app_main/        # 메인 애플리케이션 코드
│   │   └── lib/
│   │       ├── main.dart  # 앱 진입점
│   │       ├── app/       # 앱 초기화 및 설정
│   │       ├── pages/     # 페이지 컴포넌트
│   │       ├── shared/    # 공유 유틸리티
│   │       └── widgets/   # 재사용 위젯
│   │
│   └── core/            # 비즈니스 로직 및 공통 기능
│       └── lib/
│           ├── core.dart  # 패키지 진입점
│           └── src/       # 구현 클래스
```

## 주요 기능 및 구성 요소

### 1. Dart 언어 소개

- Flutter의 기반 언어
- JavaScript (비동기) + TypeScript (타입) + Java (클래스 기반 객체 지향) 특성 포함
- Null Safety 지원
- JIT(Just-in-time) & AOT(Ahead-of-time) 컴파일 지원

### 2. Flutter 위젯 시스템

Flutter에서는 모든 UI 요소가 위젯으로 구성됩니다. 앱에서 구현된 위젯 예시:

- **StatelessWidget**: 상태가 없는 정적 위젯 (React의 함수형 컴포넌트와 유사)
- **StatefulWidget**: 내부 상태를 가지는 동적 위젯 (React의 useState를 사용한 컴포넌트와 유사)
- **기본 UI 위젯**: Text, Button, Icon 등
- **레이아웃 위젯**: Row, Column, Container, Stack 등

### 3. 페이지 구성

앱은 다음 4개의 주요 페이지로 구성되어 있습니다:

#### 3.1 기본 위젯 페이지 (BasicWidgetsPage)

- 텍스트, 이미지, 아이콘 등 기본 위젯 소개

#### 3.2 레이아웃 페이지 (LayoutPage)

- Row, Column, Stack 등 레이아웃 위젯 소개

#### 3.3 상호작용 페이지 (InteractivePage)

- 버튼, 슬라이더, 텍스트 입력, 스위치 등 사용자 입력 처리 위젯 소개
- StatefulWidget을 활용한 상태 관리 예시

#### 3.4 핵심 기능 페이지 (CoreFeaturePage)

- core 패키지의 비즈니스 로직 활용 예시
- CounterManager와 Calculator 클래스 사용 방법

### 4. 상태 관리

Flutter에서의 상태 관리 방식을 다음과 같이 소개합니다:

- **로컬 상태 관리**: StatefulWidget + setState()
- **외부 상태 관리**: ChangeNotifier 기반 외부 상태 관리
- **생명주기 관리**: initState(), dispose() 활용

### 5. 핵심 비즈니스 로직 (core 패키지)

- **CounterManager**: ChangeNotifier를 활용한 카운터 상태 관리
- **Calculator**: 다양한 계산 기능을 제공하는 유틸리티 클래스

## React 개발자를 위한 비교

| React             | Flutter                     |
| ----------------- | --------------------------- |
| Component         | Widget                      |
| Props             | 생성자 매개변수             |
| useState          | StatefulWidget + setState() |
| useEffect         | initState() + dispose()     |
| Context API       | ChangeNotifier              |
| 함수형 컴포넌트   | StatelessWidget             |
| styled-components | Container, BoxDecoration 등 |

## 설치 및 실행

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

- [Flutter 공식 문서](https://flutter.dev/docs)
- [Dart 언어 투어](https://dart.dev/guides/language/language-tour)
- [Flutter 위젯 카탈로그](https://flutter.dev/docs/development/ui/widgets)
