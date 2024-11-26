import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(SummaryApp());

class SummaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Summarizer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SummaryScreen(),
    );
  }
}

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  final TextEditingController _urlController = TextEditingController();
  String? _summaryResult;
  bool _isLoading = false;

  Future<void> summarizeUrl(String url) async {
    final apiUrl = 'http://127.0.0.1:5000/summarize/';
    setState(() {
      _isLoading = true;
      _summaryResult = null;
    });

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'url': url}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _summaryResult = data['summary'];
        });
      } else {
        setState(() {
          _summaryResult = "요약 실패: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _summaryResult = "요약 중 오류 발생: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('뉴스 요약기')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _urlController,
              decoration: InputDecoration(
                labelText: 'URL 입력',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final url = _urlController.text.trim();
                if (url.isNotEmpty) {
                  summarizeUrl(url);
                }
              },
              child: Text('요약하기'),
            ),
            SizedBox(height: 20),
            if (_isLoading)
              CircularProgressIndicator()
            else if (_summaryResult != null)
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    _summaryResult!,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
