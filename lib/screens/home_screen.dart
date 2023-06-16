import 'package:flutter/material.dart';

import '../widgets/flexible_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible()'),
      ),
      body: const MyFlexible(),
    );
  }
}
