import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/category_screen.dart';
import 'screens/score_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CategoryScreen(),
      home: SplashScreen(),
      // home: ScoreScreen(score: 0, numOfQuestions: 0),
      // theme: ThemeData(fontFamily: 'main'),
    );
  }
}

//
