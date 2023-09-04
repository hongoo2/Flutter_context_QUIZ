import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
              child: Text('Go to Screen A'),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScreenA()))),
        );
      }),
    );
  }
}

//MaterialApp 과 context의 위치를 잘 살펴보시기 바랍니다

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hi there!'),
      ),
    );
  }
}
