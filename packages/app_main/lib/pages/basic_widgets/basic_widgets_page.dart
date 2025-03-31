import 'package:flutter/material.dart';

// 기본 위젯 페이지 - Flutter의 기본적인 위젯 컴포넌트들을 보여주는 페이지
// StatelessWidget - 상태가 필요 없는 정적 위젯 (React의 함수형 컴포넌트와 유사)
class BasicWidgetsPage extends StatelessWidget {
  const BasicWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '기본 위젯 예시',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // 텍스트 위젯 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '텍스트 위젯',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // 기본 텍스트 - React의 <p> 또는 일반 텍스트와 유사
                  const Text('일반 텍스트'),
                  const SizedBox(height: 5),
                  // 스타일이 적용된 텍스트 - React에서 스타일이 적용된 컴포넌트와 유사
                  const Text(
                    '스타일이 적용된 텍스트',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 이미지 위젯 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '이미지 위젯',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // ClipRRect - 자식 위젯에 둥근 모서리 적용 (CSS의 border-radius와 유사)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    // Image.network - 네트워크 이미지 로드 (React의 <img src="...">와 유사)
                    child: Image.network(
                      'https://picsum.photos/250/150',
                      width: double.infinity,
                      height: 150,
                      // BoxFit - 이미지 적합 방식 (CSS의 object-fit과 유사)
                      fit: BoxFit.cover,
                      // 이미지 로딩 중 표시할 위젯
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 아이콘 위젯 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '아이콘 위젯',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Row - 아이콘을 가로로 배치 (CSS의 flexbox row와 유사)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 아이콘 컬럼 1
                      Column(
                        children: const [
                          // Icon - 아이콘 표시 (React의 아이콘 컴포넌트와 유사)
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text('좋아요'),
                        ],
                      ),
                      // 아이콘 컬럼 2
                      Column(
                        children: const [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text('추천'),
                        ],
                      ),
                      // 아이콘 컬럼 3
                      Column(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text('즐겨찾기'),
                        ],
                      ),
                    ],
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
