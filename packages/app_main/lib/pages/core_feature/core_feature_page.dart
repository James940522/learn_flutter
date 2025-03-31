import 'package:flutter/material.dart';
import 'package:core/core.dart';

// 핵심 기능 페이지 - 외부 패키지의 비즈니스 로직을 활용하는 페이지
// React의 Custom Hook 또는 Context API 활용과 유사
class CoreFeaturePage extends StatefulWidget {
  const CoreFeaturePage({super.key});

  @override
  State<CoreFeaturePage> createState() => _CoreFeaturePageState();
}

class _CoreFeaturePageState extends State<CoreFeaturePage> {
  // CounterManager 인스턴스 생성 - 비즈니스 로직 관리자
  // React에서 Context나 Custom Hook을 사용하는 것과 유사
  final CounterManager _counterManager = CounterManager();

  @override
  void initState() {
    super.initState();
    // 상태 변경 리스너 등록 - React의 useEffect와 유사
    _counterManager.addListener(_updateUI);
  }

  @override
  void dispose() {
    // 리스너 해제 - React의 useEffect 정리 함수와 유사
    _counterManager.removeListener(_updateUI);
    super.dispose();
  }

  // UI 갱신 함수 - setState를 호출하여 화면 갱신
  void _updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '외부 패키지 비즈니스 로직',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // 카운터 관리자 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CounterManager 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        // 외부 패키지의 상태 표시
                        Text(
                          '카운터: ${_counterManager.counter}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 감소 버튼 - 외부 로직 호출
                            ElevatedButton(
                              onPressed: _counterManager.decrement,
                              child: const Text('감소'),
                            ),
                            const SizedBox(width: 10),
                            // 증가 버튼 - 외부 로직 호출
                            ElevatedButton(
                              onPressed: _counterManager.increment,
                              child: const Text('증가'),
                            ),
                            const SizedBox(width: 10),
                            // 초기화 버튼 - 외부 로직 호출
                            ElevatedButton(
                              onPressed: _counterManager.reset,
                              child: const Text('초기화'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // CounterManager 설명
                        const Text(
                          '※ CounterManager는 외부 패키지(core)에서 관리하는 상태 관리자입니다.',
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 계산기 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Calculator 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        // 외부 패키지 함수 호출 결과 표시
                        Text(
                          '현재 값 제곱: ${Calculator.square(_counterManager.counter)}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '현재 값 세제곱: ${Calculator.cube(_counterManager.counter)}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        // Calculator 설명
                        const Text(
                          '※ Calculator는 외부 패키지(core)에서 제공하는 계산 함수들입니다.',
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
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
