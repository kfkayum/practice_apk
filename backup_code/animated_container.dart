import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _check = !_check;
            });
          },
          child: Text('Click'),
        ),
        body: Center(
          child: AnimatedContainer(
            height: _check == false ? 150 : 300,
            width: _check == false ? 150 : 300,
            color: Colors.deepPurpleAccent,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
