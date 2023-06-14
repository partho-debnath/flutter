import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  final String country;
  const ScreenTwo({
    super.key,
    required this.name,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: Text(
          'Name: $name,  Country: $country',
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
