// 회원가입 및 로그인 화면
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/app_icon.png', // 앱 아이콘 경로
            //   height: 100,
            // ),
            SizedBox(height: 20),
            Text(
              '동백',
              style: TextStyle(
                fontSize: 24,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profilePrompt');
              },
              child: Text('회원가입'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/positionSelection');
              },
              child: Text('회원가입 없이 둘러보기'),
            ),
          ],
        ),
      ),
    );
  }
}
