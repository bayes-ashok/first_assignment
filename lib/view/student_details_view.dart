import 'package:first_assignment/core/common/student_listview.dart';
import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = const SizedBox(height: 8);

  final items = [
    const DropdownMenuItem(
        value: 'Janakpur Bolts', child: Text('Janakpur Bolts')),
    const DropdownMenuItem(
        value: 'Pokhara Avengers', child: Text('Pokhara Avengers')),
    const DropdownMenuItem(
        value: 'Chitwan Rhinos', child: Text('Chitwan Rhinos')),
  ];

  List<Student> lstStudents = [];

  String? selectedCity;

  // Controllers
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Player'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                labelText: 'Enter fname',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                labelText: 'Enter lname',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Select city',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_fnameController.text.isNotEmpty &&
                      _lnameController.text.isNotEmpty &&
                      selectedCity != null) {
                    // Create a new student object
                    Student student = Student(
                      fname: _fnameController.text.trim(),
                      lname: _lnameController.text.trim(),
                      city: selectedCity!,
                    );

                    // Add the student to the list
                    setState(() {
                      lstStudents.add(student);

                      // Clear the input fields and dropdown selection
                      _fnameController.clear();
                      _lnameController.clear();
                      selectedCity = null;
                    });
                  } else {
                    // Optional: Show a message if any field is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please fill all fields')),
                    );
                  }
                },
                child: const Text('Add Player'),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/output',
                    arguments: lstStudents,
                  );
                },
                child: const Text('View Players'),
              ),
            ),
            // Display student details in listview
            lstStudents.isEmpty
                ? const Text('No data ')
                : StudentListView(
                    lstStudents: lstStudents,
                    onDelete: (index) {
                      setState(() {
                        lstStudents.removeAt(
                            index); // Remove the student at the given index
                      });
                    },
                  )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    super.dispose();
  }
}
