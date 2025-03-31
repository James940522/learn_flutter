// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_main/app/app.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // 앱 제목이 표시되는지 확인
    expect(find.text('Flutter 학습 앱'), findsOneWidget);

    // 하단 네비게이션 바에 항목들이 표시되는지 확인
    expect(find.text('기본 위젯'), findsOneWidget);
    expect(find.text('레이아웃'), findsOneWidget);
    expect(find.text('상호작용'), findsOneWidget);
    expect(find.text('핵심 기능'), findsOneWidget);
  });
}
