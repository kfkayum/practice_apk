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
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: [
                          SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                  ),
                                  Text('Custom Alert Box',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(height: 15),
                                  Text(
                                    "Think Creatively Outside The Box. Learn Innovation Courses From The Comfort Of Your Home. Reimagine The Solutions Of A Better Tomorrow. Innovation Courses Driving Change. Learn to Lead & Inspire. Free Webinars & Lectures. Innovation at Work. Empathize and Prototype.",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: -50,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 50,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: Image.asset("images/5.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('Custom Box'),
            ),
          ),
        ],
      ),
    );
  }
}
