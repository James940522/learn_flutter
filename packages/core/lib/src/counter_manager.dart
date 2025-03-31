import 'package:flutter/foundation.dart';

/// 카운터 상태를 관리하는 클래스
/// ChangeNotifier를 상속받아 상태 변경 알림 기능을 제공 (React의 Context API와 유사)
class CounterManager extends ChangeNotifier {
  // 비공개 상태 변수
  int _counter = 0;

  // 상태 값 getter
  int get counter => _counter;

  // 증가 메서드
  void increment() {
    _counter++;
    notifyListeners(); // 상태 변경 알림 (React의 setState와 유사)
  }

  // 감소 메서드
  void decrement() {
    _counter--;
    notifyListeners();
  }

  // 초기화 메서드
  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
