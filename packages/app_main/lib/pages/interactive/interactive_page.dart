import 'package:flutter/material.dart';

// 상호작용 페이지 - 사용자 입력을 처리하는 위젯들을 보여주는 페이지
// StatefulWidget - 상태가 필요한 위젯
class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  // 상태 클래스 생성
  State<InteractivePage> createState() => _InteractivePageState();
}

// 상호작용 페이지의 상태 관리 클래스
class _InteractivePageState extends State<InteractivePage> {
  // 상태 변수들 - React의 useState와 유사
  int _counter = 0; // 카운터 값
  double _sliderValue = 0.5; // 슬라이더 값
  bool _switchValue = false; // 스위치 상태
  String _textInput = ''; // 입력 텍스트

  // 카운터 증가 메서드
  void _incrementCounter() {
    // setState - 상태를 업데이트하고 UI 갱신 (React의 setState/useState setter와 유사)
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '상호작용 위젯 예시',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // 버튼 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '버튼 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        // 상태 변수 표시 - React의 {counter}와 유사
                        Text(
                          '카운터: $_counter',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ElevatedButton - 버튼 위젯 (React의 <button>과 유사)
                            ElevatedButton(
                              // onPressed - 버튼 클릭 이벤트 (React의 onClick과 유사)
                              onPressed: _incrementCounter,
                              child: const Text('증가'),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              // 익명 함수로 직접 상태 변경
                              onPressed: () {
                                setState(() {
                                  _counter = 0;
                                });
                              },
                              child: const Text('초기화'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 슬라이더 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '슬라이더 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Slider - 값을 조절하는 슬라이더 위젯
                  Slider(
                    value: _sliderValue, // 현재 값
                    // onChanged - 값 변경 이벤트 (React의 onChange와 유사)
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                  // 상태를 텍스트로 표시 - 소수점 처리
                  Text('값: ${(_sliderValue * 100).toInt()}'),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 텍스트 입력 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '텍스트 입력 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // TextField - 텍스트 입력 위젯 (React의 <input>과 유사)
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(), // 테두리 스타일
                      labelText: '내용을 입력하세요', // 라벨 텍스트
                    ),
                    // onChanged - 텍스트 변경 이벤트 (React의 onChange와 유사)
                    onChanged: (value) {
                      setState(() {
                        _textInput = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  // 입력된 텍스트 표시
                  Text('입력된 텍스트: $_textInput'),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 스위치 예시
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '스위치 예시',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('설정 활성화'),
                      // Switch - 토글 스위치 위젯 (React의 checkbox와 유사)
                      Switch(
                        value: _switchValue, // 현재 상태
                        // onChanged - 상태 변경 이벤트
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  // 스위치 상태 표시 - 삼항 연산자 사용 (React의 조건부 렌더링과 유사)
                  Text('스위치 상태: ${_switchValue ? "켜짐" : "꺼짐"}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
