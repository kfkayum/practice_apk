import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpansionTile(
                  title: Text('Hello World'),
                  subtitle: Text('this is subtitle'),
                  trailing: Icon(Icons.one_x_mobiledata),
                  leading: Icon(Icons.face),
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 200,
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text('Hello World'),
                  subtitle: Text('this is subtitle'),
                  trailing: Icon(Icons.one_x_mobiledata),
                  leading: Icon(Icons.face),
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 200,
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text('Hello World'),
                  subtitle: Text('this is subtitle'),
                  trailing: Icon(Icons.one_x_mobiledata),
                  leading: Icon(Icons.face),
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 200,
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text('Hello World'),
                  subtitle: Text('this is subtitle'),
                  trailing: Icon(Icons.one_x_mobiledata),
                  leading: Icon(Icons.face),
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 200,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
