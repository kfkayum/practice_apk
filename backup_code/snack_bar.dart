import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Hello"),
          backgroundColor: Colors.green,
        ),
        drawer: const SafeArea(
          child: Drawer(
            width: 220,
            backgroundColor: Color.fromARGB(255, 166, 224, 168),
          ),
        ),
        body: Center(
          child: Builder(
            builder: (BuildContext con) {
              return ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(con).showSnackBar(SnackBar(
                      backgroundColor: Colors.green,
                      content: const Text("This is Snak Bar"),
                      duration: const Duration(seconds: 10),
                      action: SnackBarAction(
                          label: "OK",
                          textColor: Colors.white,
                          onPressed: () {}),
                    ));
                  },
                  child: const Text("Click Me"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 2, 184, 26)),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
