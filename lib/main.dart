import 'package:flutter/material.dart';
import 'package:chuks_share/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChuksShare',
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.teal[800],
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
