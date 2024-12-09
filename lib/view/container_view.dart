import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Screen'),
      ),
      body: Container(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          alignment: Alignment.center,
          child: const Text(
            'Hello World',
          ),
        ),
      ),
    );
  }
}
