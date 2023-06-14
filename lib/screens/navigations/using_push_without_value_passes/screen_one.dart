import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Screen One'),
      ),
      body: const Center(
        child: Text(
          'Screen One',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
