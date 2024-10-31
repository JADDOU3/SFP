import 'package:flutter/material.dart';
import 'package:flutter_test_project/pages/home/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      fontFamily: 'OpenSans',
      ),
      home: HomePage()
    );
  }
}
