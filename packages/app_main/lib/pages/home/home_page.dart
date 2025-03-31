import 'package:flutter/material.dart';
import '../basic_widgets/basic_widgets_page.dart';
import '../layout/layout_page.dart';
import '../interactive/interactive_page.dart';
import '../core_feature/core_feature_page.dart';

/// 앱의 홈 페이지 - 하단 네비게이션 바로 여러 페이지 전환
/// StatefulWidget - 상태가 필요한 위젯 (React의 useState를 사용한 컴포넌트와 유사)
class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// 홈 페이지의 상태 관리 클래스
class _MyHomePageState extends State<MyHomePage> {
  // 현재 선택된 페이지 인덱스 (React의 useState와 유사)
  int _selectedIndex = 0;

  // 표시할 페이지 목록
  final List<Widget> _pages = [
    const BasicWidgetsPage(),
    const LayoutPage(),
    const InteractivePage(),
    const CoreFeaturePage(),
  ];

  // 페이지 선택 처리 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱 바 - 상단 타이틀 영역
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // 본문 영역 - 선택된 페이지 표시
      body: _pages[_selectedIndex],

      // 하단 네비게이션 바 - React의 라우팅 네비게이션과 유사
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 4개 이상의 아이템이 있을 때 필요
        currentIndex: _selectedIndex, // 현재 선택된 인덱스
        onTap: _onItemTapped, // 탭 이벤트 핸들러
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: '기본 위젯',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '레이아웃',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: '상호작용',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: '핵심 기능',
          ),
        ],
      ),
    );
  }
}
