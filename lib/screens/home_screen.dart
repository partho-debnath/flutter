import 'package:flutter/material.dart';

import '../widgets/show_time_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('showTimePicker()'),
      ),
      body: const MyShowTimePicker(),
    );
  }
}
