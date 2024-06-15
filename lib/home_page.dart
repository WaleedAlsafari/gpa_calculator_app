import 'package:flutter/material.dart';
import 'package:gpa_calculator_app/comulative_gpa_page.dart';
import 'package:gpa_calculator_app/term_gpa_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 130, 220),
          centerTitle: true,
          title: const Text(
            'GPA Calculator',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              gpaType('assets/semester.png', 'Term GPA', 1, context),
              gpaType('assets/comulative.png', 'Comulative GPA', 2, context),
            ],
          ),
        ));
  }

  GestureDetector gpaType(
      String path, String name, int type, BuildContext context) {
    return GestureDetector(
      onTap: () => type == 1
          ? Navigator.pushNamed(context, 'TermGPAPage')
          : Navigator.pushNamed(context, 'ComulativeGPAPage'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(4, 2))
          ],
          border: Border.all(
            color: const Color.fromARGB(255, 20, 130, 220),
            width: 6,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 170,
        width: 270,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset(
              path,
              scale: 6,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 20, 130, 220),
              ),
            )
          ],
        ),
      ),
    );
  }
}
