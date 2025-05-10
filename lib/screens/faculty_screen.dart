import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:consmetic_ppua_project/model/faculty_model.dart';

class FacultyScreen extends StatefulWidget {
  const FacultyScreen({super.key});

  @override
  State<FacultyScreen> createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  late Future<List<Faculty>> facultyList;

  Future<List<Faculty>> loadFacultyData() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulated delay
    final String response = await rootBundle.loadString('assets/data/faculty.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Faculty.fromJson(json)).toList();
  }

  @override
  void initState() {
    super.initState();
    facultyList = loadFacultyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Faculties")),
      body: FutureBuilder<List<Faculty>>(
        future: facultyList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text("Loading data..."),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No faculties found."));
          }

          final faculties = snapshot.data!;
          return ListView.builder(
            itemCount: faculties.length,
            itemBuilder: (context, index) {
              final faculty = faculties[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.network(
                    faculty.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
                  ),
                  title: Text(faculty.title),
                  subtitle: Text(faculty.titleKh),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
