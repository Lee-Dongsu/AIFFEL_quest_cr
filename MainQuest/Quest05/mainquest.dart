import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; // 카메라 관련 패키지
import 'dart:async'; // 비동기 처리를 위한 패키지
import 'dart:io'; // 파일 처리 관련 패키지
import 'package:http/http.dart' as http; // HTTP 요청을 위한 패키지
import 'dart:convert'; // JSON 변환을 위한 패키지


// 앱 실행 시 가장 먼저 호출되는 main 함수
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter 초기화
  final cameras = await availableCameras(); // 사용 가능한 카메라 목록을 가져옴
  final firstCamera = cameras.first; // 첫 번째 카메라 선택
  runApp(MyPhotoApp(camera: firstCamera)); // MyPhotoApp에 첫 번째 카메라 전달
}

// MyPhotoApp - 앱의 최상위 위젯
class MyPhotoApp extends StatelessWidget {
  final CameraDescription camera; // 사용할 카메라 변수

  MyPhotoApp({required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      title: '내 포토', // 앱 제목
      theme: ThemeData(
        primarySwatch: Colors.blue, // 기본 색상 설정
      ),
      home: OnboardingScreen(camera: camera), // 첫 화면으로 OnboardingScreen 설정
    );
  }
}

// OnboardingScreen - 앱 실행 시 나타나는 첫 번째 화면
class OnboardingScreen extends StatefulWidget {
  final CameraDescription camera; // 사용할 카메라

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
        MaterialPageRoute(builder: (context) => MainScreen(camera: widget.camera)), // MainScreen으로 이동
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
  final CameraDescription camera; // 사용할 카메라

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

  // 네비게이션 바에서 아이템 클릭 시 호출되는 함수
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
          leading: Icon(Icons.favorite), // 즐겨찾기 아이콘
          title: Text('즐겨찾기'), // 항목 제목
          onTap: () {}, // 클릭 시 기능 추가 가능
        ),
        ListTile(
          leading: Icon(Icons.description), // 내 문서 아이콘
          title: Text('내 문서'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.photo_album), // 내 사진 아이콘
          title: Text('내 사진'),
          onTap: () {
            // 클릭 시 PhotoScreen으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PhotoScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.video_library), // 내 동영상 아이콘
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
        (index) => 'https://picsum.photos/250?image=$index', // 랜덤 이미지 URL 생성
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사진'), // 사진 화면 제목
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10), // 그리드 패딩
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 각 행에 2개의 이미지 표시
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: photoUrls.length, // 총 이미지 개수
        itemBuilder: (context, index) {
          return Image.network(
            photoUrls[index], // 이미지 URL
            fit: BoxFit.cover, // 이미지가 가득 차도록 설정
            errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey), // 이미지 로딩 실패 시 대체 아이콘
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
    // 사진 촬영 화면으로 이동
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CaptureImageScreen(camera: camera),
      ),
    );
    if (result != null && result is File) {
      // 사진 촬영 후 결과가 File인 경우 프로필 이미지 업데이트
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
            // 프로필 이미지를 원형으로 표시
            CircleAvatar(
              radius: 50,
              backgroundImage: _profileImage != null ? FileImage(_profileImage!) : null, // 프로필 이미지가 있으면 표시
              child: _profileImage == null ? Icon(Icons.account_circle, size: 100, color: Colors.blue) : null, // 기본 아이콘
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                icon: Icon(Icons.camera_alt, color: Colors.black87), // 카메라 아이콘
                onPressed: () async {
                  // 카메라 버튼 클릭 시 사진 촬영 기능 호출
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
                leading: Icon(Icons.manage_accounts), // 내 계정 관리 아이콘
                title: Text('내 계정 관리'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storage), // 저장 용량 관리 아이콘
                title: Text('저장 용량 관리'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings), // 설정 아이콘
                title: Text('설정'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support_agent), // 고객센터 아이콘
                title: Text('고객센터'),
                onTap: () {
                  // 클릭 시 InquiryScreen으로 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InquiryScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// InquiryScreen - 1:1 문의를 작성하는 화면
class InquiryScreen extends StatefulWidget {
  @override
  _InquiryScreenState createState() => _InquiryScreenState();
}

class _InquiryScreenState extends State<InquiryScreen> {
  final _inquiryController = TextEditingController();
  String _responseText = ""; // OpenAI 응답 텍스트 저장 변수

  // 문의 내용 제출 함수
  Future<void> _submitInquiry() async {
    if (_inquiryController.text.isNotEmpty) {
      // OpenAI API 호출
      final response = await _callOpenAI(_inquiryController.text);

      // 응답이 성공적이면 UI에 표시
      setState(() {
        _responseText = "문의 답변: $response"; // 응답 형식 변경
      });

      // 입력 필드 초기화
      _inquiryController.clear();

      // 성공 메시지 표시
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('문의 내용이 제출되었습니다.')),
      );
    } else {
      // 입력 내용이 없을 경우 경고 메시지 표시
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('문의 내용을 입력해 주세요.')),
      );
    }
  }

  // OpenAI API 호출 함수
  Future<String> _callOpenAI(String inquiry) async {
    final apiKey = '여기에_OpenAI_API_키_입력'; // 여기에 OpenAI API 키 입력
    final url = Uri.parse('https://api.openai.com/v1/chat/completions'); // OpenAI API URL

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({
        'model': 'gpt-3.5-turbo', // 사용할 모델
        'messages': [
          {
            'role': 'user',
            'content': inquiry, // 사용자의 문의 내용
          }
        ],
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
      return jsonResponse['choices'][0]['message']['content']; // 응답 내용 반환
    } else {
      throw Exception('API 요청 실패: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1:1 문의하기')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _inquiryController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '문의 내용을 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitInquiry,
              child: Text('전송하기'),
            ),
            SizedBox(height: 20),
            // 응답 표시 영역
            Text(
              _responseText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// CaptureImageScreen - 카메라를 통해 사진을 촬영하는 화면
class CaptureImageScreen extends StatefulWidget {
  final CameraDescription camera; // 사용할 카메라

  CaptureImageScreen({required this.camera});

  @override
  _CaptureImageScreenState createState() => _CaptureImageScreenState();
}

class _CaptureImageScreenState extends State<CaptureImageScreen> {
  late CameraController _controller; // 카메라 컨트롤러
  late Future<void> _initializeControllerFuture; // 카메라 초기화 대기 변수

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium); // 카메라 컨트롤러 초기화
    _initializeControllerFuture = _controller.initialize(); // 카메라 초기화
  }

  @override
  void dispose() {
    _controller.dispose(); // 카메라 컨트롤러 해제
    super.dispose();
  }

  // 사진을 촬영하고 파일을 반환하는 함수
  Future<void> _takePicture(BuildContext context) async {
    try {
      await _initializeControllerFuture; // 카메라 초기화 완료 대기
      final image = await _controller.takePicture(); // 사진 촬영
      Navigator.pop(context, File(image.path)); // 사진 촬영 후 이전 화면으로 파일 반환
    } catch (e) {
      print(e); // 오류 발생 시 콘솔에 출력
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('프로필 사진 촬영')), // 촬영 화면 제목
      body: FutureBuilder<void>(
        future: _initializeControllerFuture, // 카메라 초기화 대기
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller); // 카메라 미리보기 표시
          } else {
            return Center(child: CircularProgressIndicator()); // 로딩 중 표시
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt), // 카메라 아이콘
        onPressed: () => _takePicture(context), // 버튼 클릭 시 사진 촬영
      ),
    );
  }
}
