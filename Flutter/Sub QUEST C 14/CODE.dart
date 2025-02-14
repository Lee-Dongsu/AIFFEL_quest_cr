import 'package:flutter/material.dart';
import 'dart:async'; // 타이머 사용을 위해 추가

void main() {
  runApp(SamsungHealthApp());
}

class SamsungHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: '삼성헬스 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(), // 앱 시작 시 온보딩 화면을 먼저 보여줍니다.
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    // 3초 후에 홈 화면으로 자동 전환
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.favorite,
          size: 70,
          color: Colors.black,
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    TogetherScreen(),
    FitnessScreen(),
    MyPageScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // 배경색을 흰색으로 설정하여 투명해 보이지 않게 함
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black, // 선택된 아이템 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이템 색상
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '투게더',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: '피트니스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '내 페이지',
          ),
        ],
      ),
    );
  }
}

// 홈 화면
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 첫 번째 회색 상자 (걸음수와 막대 상자)
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300], // 회색 배경
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5186 / 9000 걸음', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 5186 / 9000,
                    color: Colors.green,
                    backgroundColor: Colors.grey[400],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // 두 번째 회색 상자 (아이콘 목록)
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300], // 회색 배경
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.directions_run, size: 40),
                  Icon(Icons.directions_walk, size: 40),
                  Icon(Icons.directions_bike, size: 40),
                  Icon(Icons.list, size: 40),
                ],
              ),
            ),
            SizedBox(height: 20),

            // 세 번째 회색 상자 (수면 정보와 막대 상자)
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[300], // 회색 배경
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.bedtime, size: 40),
                      SizedBox(width: 10),
                      Text('8시간 10분 수면', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 8 / 10,
                    color: Colors.blue,
                    backgroundColor: Colors.grey[400],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// 투게더 화면
class TogetherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('투게더'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 한마음 걷기의 날
            Card(
              child: Column(
                children: [
                  Image.asset('images/han.png'), // 이미지 경로 설정
                  SizedBox(height: 10),
                  Text('한마음 걷기의 날'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('참여하기'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // 경기둘레길
            Card(
              child: Column(
                children: [
                  Image.asset('images/dule.png'), // 이미지 경로 설정
                  SizedBox(height: 10),
                  Text('경기둘레길'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('참여하기'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// 피트니스 화면
class FitnessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('피트니스'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 새로운 컨텐츠
            Text('새로운 컨텐츠', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/fit1.jpg', width: 130, height: 130), // 이미지 경로 설정
                Image.asset('images/fit2.jpg', width: 130, height: 130),
                Image.asset('images/fit3.jpg', width: 130, height: 130),
              ],
            ),
            SizedBox(height: 20),

            // 프로그램
            Text('프로그램', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/pro1.jpg', width: 130, height: 130), // 이미지 경로 설정
                Image.asset('images/pro2.jpg', width: 130, height: 130),
                Image.asset('images/pro3.jpg', width: 130, height: 130),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// 내 페이지 화면
class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 상단 중앙 프로필 아이콘
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50), // 사람 모양 아이콘
            ),
            SizedBox(height: 20),

            // 배지 항목
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('배지', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.directions_walk, color: Colors.amber, size: 100), // 걷기 아이콘
                    SizedBox(width: 10),
                    Icon(Icons.directions_run, color: Colors.amber, size: 100), // 달리기 아이콘
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // 개인 최고기록 항목
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('개인 최고기록', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.emoji_events, color: Colors.amber, size: 100), // 노란색 트로피 아이콘
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
