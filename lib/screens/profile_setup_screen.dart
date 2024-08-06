import 'package:flutter/material.dart';

class ProfileSetupScreen extends StatefulWidget {
  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_img.png'),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '닉네임을 입력하세요.',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 높이와 가로폭 조절
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              SizedBox(height: 10.0),
              Text('아베퍼정보', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10.0),
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '이름(실명)을 입력하세요. (ex) 홍길동',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 높이와 가로폭 조절
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 300,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: '학교',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 높이와 가로폭 조절
                  ),
                  items: ['학교1', '학교2', '학교3']
                      .map((school) => DropdownMenuItem(
                    value: school,
                    child: Text(school),
                  ))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 300, // 가로폭을 줄임
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '학반 (ex) 20',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 높이와 가로폭 조절
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 300,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: '직책',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // 높이와 가로폭 조절
                  ),
                  items: ['직책1', '직책2', '직책3']
                      .map((position) => DropdownMenuItem(
                    value: position,
                    child: Text(position),
                  ))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    Expanded(
                      child: Text('개인정보 수집에 동의합니다'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // primary에서 backgroundColor로 변경
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '프로필 설정하기',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // 글자 두께를 두배로 설정
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
