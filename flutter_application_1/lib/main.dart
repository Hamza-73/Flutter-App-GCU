import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/hoodiescreen.dart';
import 'package:flutter_application_1/screens/meritscreen.dart';
import 'package:flutter_application_1/screens/sweatshirtscreen.dart';
import 'screens/coatscreen.dart';
import 'screens/homescreen.dart';
import 'screens/aboutus.dart';

void main() {
  runApp(const ClothApp());
}

class ClothApp extends StatelessWidget {
  const ClothApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/coat": (context) => CoatScreen(),
        "/hoodies": (context) => HoodieScreen(),
        "/sweatshirt": (context) => SweatShirtScreen(),
        "/aboutUS": (context) => AboutUSScreen(),
        "/merit": (context) => MeritScreen(),
      },
      initialRoute: "/",
    );
  }
}
