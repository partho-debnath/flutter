import 'package:flutter/material.dart';

import '../widgets/form_and_textformfield_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form() Widget'),
      ),
      body: const MyForm(),
    );
  }
}
