import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 250,
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text('Hello world'),
                            subtitle: Text('1345346'),
                            leading: Icon(Icons.whatsapp),
                          ),
                          ListTile(
                            title: Text('Hello world'),
                            subtitle: Text('1345346'),
                            leading: Icon(Icons.whatsapp),
                          ),
                          ListTile(
                            title: Text('Hello world'),
                            subtitle: Text('1345346'),
                            leading: Icon(Icons.whatsapp),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('Bottom Sheet'),
            ),
          ),
        ],
      ),
    );
  }
}
