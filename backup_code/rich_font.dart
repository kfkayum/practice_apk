import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: 'Create a new account    ',
              style: TextStyle(color: Colors.black, fontSize: 16),
              children: [
                TextSpan(
                  text: 'Forget Password',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
