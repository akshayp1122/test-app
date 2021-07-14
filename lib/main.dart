import 'package:flutter/material.dart';
import 'package:test_app/screens/starting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF050B18),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      home: StartingPage(),
    );
  }
}


