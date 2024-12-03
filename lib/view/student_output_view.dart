import 'package:first_assignment/core/common/student_listview.dart';
import 'package:first_assignment/model/student.dart';
// import 'package:first_assignment/view/student_details_view.dart';
import 'package:flutter/material.dart';

class StudentOutputView extends StatefulWidget {
  const StudentOutputView({super.key});

  @override
  State<StudentOutputView> createState() => _StudentOutputViewState();
}

class _StudentOutputViewState extends State<StudentOutputView> {
  List<Student> lstStudents = [];

  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: lstStudents.isEmpty
                ? const Center(child: Text('No data'))
                : StudentListView(
                    lstStudents: lstStudents,
                    onDelete: (index) {
                      setState(() {
                        lstStudents.removeAt(index);
                      });
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
