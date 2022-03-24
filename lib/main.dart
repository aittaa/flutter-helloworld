import 'package:flutter/material.dart';

// 앱의 시작점 main function
// fat arrow : 다른 함수를 호출
// runApp은 위젯을 arg로 가져야 한다.
// 위젯 'MyApp()'은 최상위에 위치하며 스크린 레이아웃을 최초로 빌드한다. (뼈대를 만드는 역할)
// -> 정적인 stateless 위젯

void main() => runApp(MyApp());

//stl
//모든 커스텀 위젯은 또 다른 위젯을 리턴하는 build()를 가진다.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //플러터의 모든 위젯들은 arg를 필요로함
    return MaterialApp(
      title: "hello world", // 앱을 총칭하는 이름
      theme: ThemeData(
        primarySwatch:Colors.blue // 앱에서 기본적으로 사용할 색상 견본을 의미
      ), // 앱의 기본적인 디자인 테마를 지정한다.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"), // 화면에 출력됨
      ), //앱 바 많은 위한 모든 디자인과 기능들을 구성할 수 있다.
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ), // Column() : 모든 child를 세로로 배치
      ),
    );// Scaffold : 앱 화면에 다양한 요소를 배치하고 그릴 수 있도록 도와주는 빈 도화지 같은 역할
  }
}
