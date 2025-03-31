/// 다양한 계산 함수를 제공하는 유틸리티 클래스
/// 정적 메서드만 포함된 클래스 (React의 유틸리티 함수와 유사)
class Calculator {
  // 생성자를 private으로 하여 인스턴스화 방지
  Calculator._();

  /// 제곱값을 반환
  static int square(int value) {
    return value * value;
  }

  /// 세제곱값을 반환
  static int cube(int value) {
    return value * value * value;
  }

  /// 짝수 여부 확인
  static bool isEven(int value) {
    return value % 2 == 0;
  }

  /// 홀수 여부 확인
  static bool isOdd(int value) {
    return value % 2 != 0;
  }
}
