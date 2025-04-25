import 'package:flutter/material.dart';

// stfull

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: _body,
     );
  }


  Widget get _body{
    return Center(
      child: Text(""),
    );
  }
}
