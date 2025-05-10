import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LibaryScreen extends StatefulWidget {
  const LibaryScreen({super.key});

  @override
  State<LibaryScreen> createState() => _LibaryScreenState();
}

class _LibaryScreenState extends State<LibaryScreen> {


  // load data
  String apiURl = "https://fakestoreapi.com/products";




  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(title: const Text("News"),),
        );
  }
}
