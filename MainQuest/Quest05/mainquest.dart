import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';

// main 함수 - 앱 실행 시 가장 먼저 호출됨
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter 초기화
  final cameras = await availableCameras(); // 사용할 수 있는 카메라 목록을 가져옴
  final firstCamera = cameras.first; // 첫 번째 카메라 선택
  runApp(MyPhotoApp(camera: firstCamera)); // MyPhotoApp에 첫 번째 카메라 전달
}

// MyPhotoApp - 앱의 최상위 위젯으로, 초기 설정을 담당함
class MyPhotoApp extends StatelessWidget {
  final CameraDescription camera; // 사용할 카메라 변수

  MyPhotoApp({required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      title: '내 포토', // 앱 제목 설정
      theme: ThemeData(
        primarySwatch: Colors.blue, // 앱의 기본 색상 설정
      ),
      home: OnboardingScreen(camera: camera), // 첫 화면으로 OnboardingScreen 설정
    );
  }
}

// OnboardingScreen - 앱 실행 시 나타나는 첫 번째 화면 (온보딩 화면)
class OnboardingScreen extends StatefulWidget {
  final CameraDescription camera;

  OnboardingScreen({required this.camera});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    // 3초 후 MainScreen으로 이동
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen(camera: widget.camera)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // 중앙에 하트 아이콘 표시
        child: Icon(
          Icons.favorite,
          size: 70,
          color: Colors.black,
        ),
      ),
    );
  }
}

// MainScreen - 앱의 주요 화면을 나타내며, 하단에 네비게이션 바를 포함
class MainScreen extends StatefulWidget {
  final CameraDescription camera;

  MainScreen({required this.camera});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 현재 선택된 네비게이션 아이템 인덱스
  final List<Widget> _screens = [
    HomeScreen(), // 홈 화면
    PhotoScreen(), // 사진 화면
    MyAccountScreen(), // 내 계정 화면
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 선택된 화면 업데이트
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // 현재 선택된 화면 보여줌
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: '사진',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '내 계정',
          ),
        ],
        currentIndex: _selectedIndex, // 현재 선택된 아이템 표시
        onTap: _onItemTapped, // 네비게이션 아이템 클릭 시 호출
      ),
    );
  }
}

// HomeScreen - 홈 화면을 구성
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('즐겨찾기'),
          onTap: () {}, // 클릭 시 기능 추가 가능
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('내 문서'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('내 사진'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PhotoScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.video_library),
          title: Text('내 동영상'),
          onTap: () {},
        ),
      ],
    );
  }
}

// PhotoScreen - 사진 목록을 그리드 형태로 보여주는 화면
class PhotoScreen extends StatelessWidget {
  // 예제용 사진 URL 목록 생성
  final List<String> photoUrls = List.generate(
    6,
        (index) => 'https://picsum.photos/250?image=$index',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사진'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 각 행에 2개의 이미지 표시
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: photoUrls.length,
        itemBuilder: (context, index) {
          return Image.network(
            photoUrls[index],
            fit: BoxFit.cover, // 이미지가 가득 차도록 설정
            errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey),
          );
        },
      ),
    );
  }
}


// MyAccountScreen - 사용자 계정 정보 화면
class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  File? _profileImage; // 프로필 이미지 변수

  // 프로필 사진 촬영 기능
  Future<void> _captureProfileImage(BuildContext context, CameraDescription camera) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CaptureImageScreen(camera: camera),
      ),
    );
    if (result != null && result is File) {
      setState(() {
        _profileImage = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: _profileImage != null ? FileImage(_profileImage!) : null,
              child: _profileImage == null ? Icon(Icons.account_circle, size: 100, color: Colors.blue) : null,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                icon: Icon(Icons.camera_alt, color: Colors.black87),
                onPressed: () async {
                  await _captureProfileImage(context, (context.findAncestorWidgetOfExactType<MyPhotoApp>()!).camera);
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.manage_accounts),
                title: Text('내 계정 관리'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storage),
                title: Text('저장 용량 관리'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('설정'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support_agent),
                title: Text('고객센터'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// CaptureImageScreen - 카메라를 통해 사진을 촬영하는 화면
class CaptureImageScreen extends StatefulWidget {
  final CameraDescription camera;

  CaptureImageScreen({required this.camera});

  @override
  _CaptureImageScreenState createState() => _CaptureImageScreenState();
}

class _CaptureImageScreenState extends State<CaptureImageScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium); // 카메라 컨트롤러 초기화
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose(); // 컨트롤러 해제
    super.dispose();
  }

  // 사진을 촬영하고 파일을 반환하는 함수
  Future<void> _takePicture(BuildContext context) async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      Navigator.pop(context, File(image.path)); // 사진을 찍고 이전 화면으로 파일 반환
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('프로필 사진 촬영')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller); // 카메라 미리보기 표시
          } else {
            return Center(child: CircularProgressIndicator()); // 로딩 중 표시
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () => _takePicture(context),
      ),
    );
  }
}
