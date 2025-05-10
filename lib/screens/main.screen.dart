import 'package:consmetic_ppua_project/screens/faculty_screen.dart';
import 'package:consmetic_ppua_project/screens/home_screen.dart';
import 'package:consmetic_ppua_project/screens/libary_screen.dart';
import 'package:consmetic_ppua_project/screens/user_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;

  List<Widget> listScreen =  [
    HomeScreen(),
    FacultyScreen(),
    LibaryScreen(),
    UserScreen()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // list button
      body: SafeArea(
          child:listScreen[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.blue, // TODO: when select change to blue
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }




}
