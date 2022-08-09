import 'dart:ui';

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
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: Container(
                  height: 100,
                  color: Colors.deepPurpleAccent,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _check = false;
                        });
                      },
                      child: Text('Cleck Here'),
                    ),
                  ),
                ),
                secondChild: Container(
                  child: const Text(
                    'Greate',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                    ),
                  ),
                ),
                crossFadeState: _check
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
