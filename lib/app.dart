import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arithmetic.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_output_view.dart';
import 'package:first_assignment/view/dashboard.dart';
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
        '/': (context) => const Dashboard(),
        '/player': (context) => const StudentDetailsView(),
        '/arithmetic': (context) => const Arithmetic(),
        '/si': (context) => const SimpleInterest(),
        '/area': (context) => const AreaOfCircle(),
        '/output': (context) => const StudentOutputView(),
      },
    );
  }
}
