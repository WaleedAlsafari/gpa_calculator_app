import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/comulative_gpa_page.dart';
import 'package:gpa_calculator_app/splash_screen.dart';
import 'package:gpa_calculator_app/term_gpa_page.dart';

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
    return MaterialApp(
      routes: {
        'TermGPAPage': (context) => const TermGPAPage(),
        'ComulativeGPAPage': (context) => const ComulativeGPAPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
