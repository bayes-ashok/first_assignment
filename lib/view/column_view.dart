import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon(Icons.star, size: 50),
            // Icon(Icons.star, size: 50),
            // Spacer(), // Pushes the last icon to the bottom
            // Icon(Icons.star, size: 50),
            ElevatedButton(onPressed: () {}, child: const Text("Button1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button1")),
          ],
        ),
      ),
    );
  }
}
