//스낵바(Snack bar)와 BuildContext
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        // body: Center(
        //   child: TextButton(
        //     child: const Text(
        //       'Show me',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     style: TextButton.styleFrom(
        //       backgroundColor: Colors.red,
        //     ),
        //     onPressed: () {
        //       ScaffoldMessenger.of(context)
        //           .showSnackBar(SnackBar(content: Text('Hello world')));
        //     },
        //   ),
        // ),
        body: Builder(builder: (BuildContext ctx) {
          return Center(
            child: TextButton(
              child: const Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                ScaffoldMessenger.of(ctx)
                    .showSnackBar(SnackBar(content: Text('Hello world')));
              },
            ),
          );
        }));
  }
}
