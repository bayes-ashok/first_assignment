import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arithmetic.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AreaOfCircle(),
    );
  }
}
