import 'package:flutter/material.dart';



import 'main_page/buttomnavigator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtomNagPage(),
    );
  }
}
