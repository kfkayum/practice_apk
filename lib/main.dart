import 'package:flutter/material.dart';
import 'package:new_project/page1.dart'; //page One code in under the page):

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Kayum";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => One(
                  kayum: name,
                ),
              ),
            );
          },
          child: Text('OK'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class One extends StatelessWidget {
//   String kayum;
//   One({required this.kayum});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(kayum),
//       ),
//     );
//   }
// }

