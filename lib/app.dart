// import 'package:first_assignment/view/column_view.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_output_view.dart';
// import 'package:first_assignment/view/dashboard.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: ColumnView(),
    // );
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StudentDetailsView(),
        '/output': (context) => const StudentOutputView(),
      },
    );
  }
}
