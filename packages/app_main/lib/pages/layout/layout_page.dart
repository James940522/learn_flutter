import 'package:flutter/material.dart';

// 레이아웃 페이지 - 다양한 레이아웃 위젯을 보여주는 페이지
// StatelessWidget - 상태가 필요 없는 정적 위젯 (React의 함수형 컴포넌트와 유사)
class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '레이아웃 위젯 예시',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // Row 위젯 예시 - 가로 배치
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Row 위젯 (가로 배치)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Row - 자식 위젯을 가로로 배치 (CSS의 flexbox row와 유사)
                  Row(
                    // mainAxisAlignment - 주축 정렬 (CSS의 justify-content와 유사)
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 컬러 박스 위젯들
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.red,
                        child: const Center(child: Text('1')),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.green,
                        child: const Center(child: Text('2')),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.blue,
                        child: const Center(child: Text('3')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Column 위젯 예시 - 세로 배치
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Column 위젯 (세로 배치)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Column - 자식 위젯을 세로로 배치 (CSS의 flexbox column과 유사)
                  Column(
                    // crossAxisAlignment - 교차축 정렬 (CSS의 align-items와 유사)
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        color: Colors.orange,
                        child: const Center(child: Text('위')),
                      ),
                      const SizedBox(height: 8), // 간격
                      Container(
                        width: 160,
                        height: 40,
                        color: Colors.purple,
                        child: const Center(child: Text('중간')),
                      ),
                      const SizedBox(height: 8), // 간격
                      Container(
                        width: 200,
                        height: 40,
                        color: Colors.teal,
                        child: const Center(child: Text('아래')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Stack 위젯 예시 - 겹치는 배치
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Stack 위젯 (겹치는 배치)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Stack - 자식 위젯을 겹쳐서 배치 (CSS의 position: absolute와 유사)
                  SizedBox(
                    height: 200,
                    child: Stack(
                      // alignment - 정렬 방식
                      alignment: Alignment.center,
                      children: [
                        // 첫 번째 자식은 맨 아래에 위치
                        Container(
                          width: 200,
                          height: 200,
                          color: Colors.amber.withOpacity(0.7),
                        ),
                        // 두 번째 자식은 위에 겹침
                        Container(
                          width: 150,
                          height: 150,
                          color: Colors.blueAccent.withOpacity(0.7),
                        ),
                        // 세 번째 자식은 맨 위에 겹침
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent.withOpacity(0.7),
                        ),
                        // 텍스트는 맨 위에 표시됨
                        const Text(
                          '겹친 위젯',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
