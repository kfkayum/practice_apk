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
        appBar: AppBar(
          title: const Text('App Bar'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Dismissible(
            key: const ValueKey('abc'),
            secondaryBackground: Container(
              color: Colors.blue,
              child: const Icon(
                Icons.edit,
                size: 40,
              ),
            ),
            background: Container(
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            child: const ListTile(
              title: Text('Hello'),
              subtitle: Text('hebdfikbqwedfiqe'),
              trailing: Icon(Icons.access_alarm_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
