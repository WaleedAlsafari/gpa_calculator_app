import 'package:flutter/material.dart';

class TermGPAPage extends StatefulWidget {
  const TermGPAPage({super.key});

  @override
  State<TermGPAPage> createState() => _TermGPAPageState();
}

class _TermGPAPageState extends State<TermGPAPage> {
  // Controllers for TextFields
  final TextEditingController _previousGPAController = TextEditingController();
  final TextEditingController _completedCreditsController = TextEditingController();
  final TextEditingController _courseNameController = TextEditingController();
  final TextEditingController _creditsController = TextEditingController();

  // Variable to store the selected grade
  String? _selectedGrade;

  @override
  void dispose() {
    // Dispose controllers when the widget is disposed
    _previousGPAController.dispose();
    _completedCreditsController.dispose();
    _courseNameController.dispose();
    _creditsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    const SizedBox(width: 8), // Add some space between the icon and the text
                    const Text(
                      'Term GPA Calculation',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Previous GPA",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                                ),
                              ),
                              const SizedBox(height: 2),
                              TextField(
                                controller: _previousGPAController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Eg: 4.3',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Completed Credits",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                                ),
                              ),
                              const SizedBox(height: 2),
                              TextField(
                                controller: _completedCreditsController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Eg: 75',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),

          addRow()

        ],
      ),
    );
  }

  Padding addRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
      child: Row(
        children: [
          Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "Course Name",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 2),
                    TextField(
                      controller: _courseNameController,
                      decoration: InputDecoration(
                        hintText: 'Eg: Math 110',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 243, 243, 243),
                      ),
                    ),
                  ],
                ),
              )),
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "Credits",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 2),
                    TextField(
                      controller: _creditsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Eg: 3',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 243, 243, 243),
                      ),
                    ),
                  ],
                ),
              )),
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "Grade",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 2),
                    DropdownButtonFormField<String>(
                      value: _selectedGrade,
                      hint: const Text('Eg: A', style: TextStyle(color: Colors.grey)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 243, 243, 243),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'A+', child: Text('A+')),
                        DropdownMenuItem(value: 'A', child: Text('A')),
                        DropdownMenuItem(value: 'B+', child: Text('B+')),
                        DropdownMenuItem(value: 'B', child: Text('B')),
                        DropdownMenuItem(value: 'C+', child: Text('C+')),
                        DropdownMenuItem(value: 'C', child: Text('C')),
                        DropdownMenuItem(value: 'D+', child: Text('D+')),
                        DropdownMenuItem(value: 'D', child: Text('D')),
                        DropdownMenuItem(value: 'F', child: Text('F')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedGrade = value;
                        });
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
