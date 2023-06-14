import 'package:flutter/material.dart';

import '../widgets/circular_and_linear_progree_indicator_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularAndLinearProgressIndicator()'),
      ),
      body: const MyCircularAndLinearProgressIndicator(),
    );
  }
}
