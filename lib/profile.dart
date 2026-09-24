//basic profilepage created for the app

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profile"))),
    );
  }
}
