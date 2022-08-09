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
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _value == false ? "Unchecked" : "Checked",
                style: const TextStyle(fontSize: 40),
              ),
              Checkbox(
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
