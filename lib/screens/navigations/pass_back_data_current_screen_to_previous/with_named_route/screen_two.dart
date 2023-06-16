import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String routeName = 'screen-two/';
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Screen Two NamedRoute with Value.',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Country: ${arguments['country']}, Name: ${arguments['name']}',
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context, 'I am from screen Two.');
        },
        label: const Text('Go Back to the Previous Screen.'),
      ),
    );
  }
}
