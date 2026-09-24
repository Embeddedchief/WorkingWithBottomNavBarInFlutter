import 'package:flutter/material.dart';

import 'package:navbar_learning/profile.dart';
import 'package:navbar_learning/search.dart';
import 'package:navbar_learning/home.dart';
import 'package:curved_navigation_bar_pro/curved_navigation_bar_pro.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> pages = [HomeContent(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],

      bottomNavigationBar: CurvedNavigationBarPro(
        items: [
          CurvedNavigationItemPro(
            inactiveIcon: Icons.home_outlined,
            activeIcon: Icons.home_rounded,
            label: "Home",
          ),

          CurvedNavigationItemPro(
            inactiveIcon: Icons.search_outlined,
            activeIcon: Icons.search_rounded,
            label: "Looking",
          ),

          CurvedNavigationItemPro(
            inactiveIcon: Icons.person_outlined,
            activeIcon: Icons.person_rounded,
            label: "Me",
          ),
        ],

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.black,
        activeColor: Colors.yellow,
        inactiveColor: Colors.white,
      ),
    );
  }
}
