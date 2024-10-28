import 'package:flutter/material.dart';

void main() {
  runApp(JellyfishClassifierApp());
}

class JellyfishClassifierApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jellyfish Classifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JellyfishClassifierPage(),
    );
  }
}

class JellyfishClassifierPage extends StatelessWidget {
  void _predictClass() {
    // 예측 결과를 콘솔에 출력하는 함수
    print("예측결과: 해파리 클래스");
  }

  void _predictConfidence() {
    // 예측 확률을 콘솔에 출력하는 함수
    print("예측확률: 95%");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.pool),  // 해파리 아이콘 대체로 수영장 아이콘 사용
            SizedBox(width: 8),
            Text('Jellyfish Classifier'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 이미지 표시 부분
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'images/jellyfish.jpg',  // 이미지 파일 경로
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            // 버튼 행
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _predictClass,
                  child: Text('예측결과'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _predictConfidence,
                  child: Text('예측확률'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
