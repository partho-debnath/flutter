import 'package:flutter/material.dart';

import '../widgets/floating_action_button_widget.dart';

class MyFloatingActionButtonScreen extends StatelessWidget {
  const MyFloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}
