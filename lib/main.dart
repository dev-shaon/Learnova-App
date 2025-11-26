import 'package:flutter/material.dart';
import 'package:learnova_app/Screens/Log_In_Screen.dart';

void main() {
  runApp(const LearnovaApp());
}

class LearnovaApp extends StatelessWidget {
  const LearnovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}