import 'package:flutter/material.dart';

import '../widgets/show_date_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('showDatePicker()'),
      ),
      body: const MyShowDatePicher(),
    );
  }
}
