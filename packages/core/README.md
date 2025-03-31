# core 패키지

이 패키지는 Flutter 학습 앱의 비즈니스 로직과 공통 기능을 제공합니다. UI와 분리된 형태로 재사용 가능한 로직을 포함하고 있습니다.

## 구조

```
lib/
├── core.dart      # 패키지 진입점
└── src/           # 구현 클래스
    ├── counter_manager.dart  # 카운터 상태 관리 클래스
    └── calculator.dart       # 계산 유틸리티 클래스
```

## 주요 컴포넌트

### core.dart

패키지의 진입점으로, 외부에 노출할 클래스와 함수를 export합니다.

### src/counter_manager.dart

`CounterManager` 클래스는 카운터 상태를 관리하는 클래스로, `ChangeNotifier`를 상속받아 상태 변경 시 리스너에게 알림을 제공합니다. React의 Context API와 유사한 역할을 합니다.

주요 기능:

- 카운터 값 증가 (`increment()`)
- 카운터 값 감소 (`decrement()`)
- 카운터 초기화 (`reset()`)

### src/calculator.dart

`Calculator` 클래스는 다양한 계산 기능을 제공하는 유틸리티 클래스로, 정적 메서드로 구성되어 있습니다. React의 유틸리티 함수와 유사합니다.

주요 기능:

- 제곱값 계산 (`square()`)
- 세제곱값 계산 (`cube()`)
- 짝수/홀수 확인 (`isEven()`, `isOdd()`)

## React 개발자를 위한 학습 포인트

- **ChangeNotifier**를 통한 상태 관리 (React의 Context API와 유사)
- 비즈니스 로직과 UI 분리 (관심사 분리)
- 정적 유틸리티 메서드 패턴

## 사용 예시

```dart
// CounterManager 사용
final counterManager = CounterManager();
counterManager.increment(); // 카운터 값 증가
print(counterManager.counter); // 현재 카운터 값 출력

// 상태 변경 리스너 등록
counterManager.addListener(() {
  print('카운터 값이 변경됨: ${counterManager.counter}');
});

// Calculator 사용
final squared = Calculator.square(5); // 25
final isEven = Calculator.isEven(4); // true
```

## 의존성

이 패키지는 다음 패키지에 의존합니다:

- `flutter`: `ChangeNotifier` 사용을 위한 Flutter 프레임워크
