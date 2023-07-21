import 'package:flutter/material.dart';
import 'package:store_ui/main_page/home_page/homepage.dart';
import 'package:store_ui/main_page/main_page_first.dart';
import 'package:store_ui/main_page/splash_page/splash.dart';



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
      home:SplashPage(),
    );
  }
}
