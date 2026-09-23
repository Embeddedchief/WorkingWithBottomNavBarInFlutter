import 'package:flutter/material.dart';
import 'package:navbar_learning/profile.dart';
import 'package:navbar_learning/search.dart';
import 'package:navbar_learning/home.dart';

void main() {
  runApp(NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> pages = [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Feel at home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Look for things",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Meet me",
          ),
        ],

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
