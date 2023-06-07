import 'package:flutter/material.dart';

import '../widgets/text_and_center.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: const CenterAndText(),
    );
  }
}
