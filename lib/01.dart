import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Character card", // 앱을 총칭하는 이름
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BBANTO"),
        centerTitle: true, // title 정렬 옵션
        backgroundColor: Colors.redAccent,
        elevation: 0, // 떠 있는 듯한 음영효과 위한 높이 설정
      ),
      body: Center(
        // 가로 중앙 정렬
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //앱 스크린 내 위젯을 세로 상중하단에 위치시킬 때
          children: [Text("hello"), Text("hello"), Text("hello")],
        ),
      ),
    ); // Scaffold : 앱 화면에 다양한 요소를 배치하고 그릴 수 있도록 도와주는 빈 도화지 같은 역할
  }
}
