// Material 디자인 위젯을 사용하기 위한 패키지 import
import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';

/// 앱의 루트 위젯 - 전체 앱의 설정을 정의
/// StatelessWidget - 상태가 필요 없는 정적 위젯 (React의 App 컴포넌트와 유사)
class MyApp extends StatelessWidget {
  // 생성자 - key는 위젯 식별 및 최적화에 사용됨
  const MyApp({super.key});

  // build 메서드 - React의 render() 함수와 동일한 역할
  @override
  Widget build(BuildContext context) {
    // MaterialApp - 앱의 최상위 위젯으로 테마, 라우팅 등 설정
    return MaterialApp(
      // 앱 제목
      title: 'Flutter 학습 앱',

      // 앱 테마 설정 - React의 ThemeProvider와 유사
      theme: ThemeData(
        // 기본 색상 설정
        primarySwatch: Colors.blue,
        // Material 3 디자인 적용
        useMaterial3: true,
      ),

      // 홈 화면 설정 - React Router의 첫 번째 Route와 유사
      home: const MyHomePage(title: 'Flutter 학습 앱'),
    );
  }
}
