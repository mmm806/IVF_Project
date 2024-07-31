//프로필 설정 유도 화면
import 'package:flutter/material.dart';

class ProfileSetupPromptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("프로필 설정 유도")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/positionSelection');
          },
          child: Text('프로필 설정 시작하기'),
        ),
      ),
    );
  }
}
