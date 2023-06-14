import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String routeName = 'screen-two/';
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Screen Two'),
      ),
      body: const Center(
        child: Text(
          'Screen Two',
          style: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
