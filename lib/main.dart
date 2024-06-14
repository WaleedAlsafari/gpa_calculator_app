import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/splash_screen.dart';

void main() {
  runApp(const GPACalculatorApp());
}

class GPACalculatorApp extends StatefulWidget {
  const GPACalculatorApp({super.key});

  @override
  State<GPACalculatorApp> createState() => _GPACalculatorAppState();
}

class _GPACalculatorAppState extends State<GPACalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
