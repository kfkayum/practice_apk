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
  double _iniFontValue = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: TextStyle(fontSize: _iniFontValue),
            ),
            const SizedBox(
              height: 30,
            ),
            Slider(
                min: 15,
                max: 40,
                value: _iniFontValue,
                onChanged: (value) {
                  setState(() {
                    _iniFontValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
