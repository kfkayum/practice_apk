import 'package:flutter/material.dart';

class One extends StatefulWidget {
  String kayum;
  One({required this.kayum});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.kayum),
      ),
    );
  }
}
