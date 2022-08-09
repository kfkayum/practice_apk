// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:new_project/page1.dart';
import 'package:new_project/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final _page = [
    One(),
    Two(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 206, 241),
        body: SafeArea(
          child: Row(
            children: [
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                selectedLabelTextStyle: TextStyle(color: Colors.black),
                backgroundColor: Colors.deepPurpleAccent,
                destinations: [
                  const NavigationRailDestination(
                    icon: Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                    label: Text('Wifi'),
                    selectedIcon: Icon(
                      Icons.wifi,
                      color: Colors.black,
                    ),
                  ),
                  const NavigationRailDestination(
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    label: Text('Camera'),
                    selectedIcon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onDestinationSelected: (val) {
                  setState(() {
                    _selectedIndex = val;
                  });
                },
              ),
              Expanded(child: _page[_selectedIndex]),
            ],
          ),
        ),
      ),
    );
  }
}
