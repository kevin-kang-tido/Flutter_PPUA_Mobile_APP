import 'package:flutter/material.dart';


class LibaryScreen extends StatefulWidget {
  const LibaryScreen({super.key});

  @override
  State<LibaryScreen> createState() => _LibaryScreenState();
}

class _LibaryScreenState extends State<LibaryScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Center(
          child: Text("this is Libary page!"),
        )
      // Text("Hello , This is Faculty the king!"),
    );
  }
}
