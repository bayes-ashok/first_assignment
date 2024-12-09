import 'package:flutter/material.dart';

class SnackbarView extends StatefulWidget {
  const SnackbarView({super.key});

  @override
  State<SnackbarView> createState() => _SnackbarViewState();
}

class _SnackbarViewState extends State<SnackbarView> {
  _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text("Hello Button 1"),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _showSnackbar(),
            child: const Text("Button 1"),
          ),
        ],
      ),
    );
  }
}
