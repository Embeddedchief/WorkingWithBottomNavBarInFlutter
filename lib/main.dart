//Here is the main file, where the code runs from

//This imports the packages used across this Nav Bar app application
import 'package:flutter/material.dart';

import 'package:navbar_learning/profile.dart';
import 'package:navbar_learning/search.dart';
import 'package:navbar_learning/home.dart';
import 'package:curved_navigation_bar_pro/curved_navigation_bar_pro.dart';

//My main function, which is the actual start point of the code
void main() {
  runApp(NavigationApp());
}

//Sateless widget class that wraps the homepage
class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

//Homepage Statefull widgets
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  //creating index variable to set thenavigation
  int _currentIndex = 0;

  //list of widgets that holds the list of the pages in the program
  List<Widget> pages = [HomeContent(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],

      //Bothom nav Widget
      bottomNavigationBar: CurvedNavigationBarPro(
        items: [
          //Home Nav Description
          CurvedNavigationItemPro(
            inactiveIcon: Icons.home_outlined,
            activeIcon: Icons.home_rounded,
            label: "Home",
          ),

          //Search nav bar description
          CurvedNavigationItemPro(
            inactiveIcon: Icons.search_outlined,
            activeIcon: Icons.search_rounded,
            label: "Looking",
          ),

          //profile nabar description
          CurvedNavigationItemPro(
            inactiveIcon: Icons.person_outlined,
            activeIcon: Icons.person_rounded,
            label: "Me",
          ),
        ],

        //where the index setstate is done
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        //customisation of the navbar
        backgroundColor: Colors.black,
        activeColor: const Color.fromARGB(255, 255, 117, 78),
        inactiveColor: Colors.white,
        fabColor: Colors.red,
      ),
    );
  }
}
