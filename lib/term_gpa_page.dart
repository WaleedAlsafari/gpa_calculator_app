import 'package:flutter/material.dart';

class TermGPAPage extends StatefulWidget {
  const TermGPAPage({super.key});

  @override
  State<TermGPAPage> createState() => _TermGPAPageState();
}

class _TermGPAPageState extends State<TermGPAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 56, 12, 0),
            height: 220,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 20, 130, 220),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    const Text(
                      'Term GPA Calculation',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
