import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  final String name;
  final int id;
  const ScreenOne({
    super.key,
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Screen One'),
      ),
      body: Center(
        child: Text(
          'Name: $name,  ID: $id',
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
