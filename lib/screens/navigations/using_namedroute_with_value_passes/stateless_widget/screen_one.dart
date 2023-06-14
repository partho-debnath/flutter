import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const String routeName = 'screen-one/';
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Screen One NamedRoute with Value.',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'ID: ${arguments['id']}, Name: ${arguments['name']}',
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
