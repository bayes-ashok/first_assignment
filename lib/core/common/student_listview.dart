import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({
    super.key,
    required this.lstStudents,
    required this.onDelete,
  });

  final List<Student> lstStudents;
  final void Function(int) onDelete; // Callback to handle deletion

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lstStudents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.abc_outlined),
            title:
                Text('${lstStudents[index].fname} ${lstStudents[index].lname}'),
            subtitle: Text(lstStudents[index].city),
            trailing: IconButton(
              onPressed: () {
                onDelete(index); // Invoke the callback with the index
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
