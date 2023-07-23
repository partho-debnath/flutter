import 'package:flutter/material.dart';

import '../widgets/interactiveviewer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewer() Widget'),
      ),
      body: const MyInteractiveViewer(),
    );
  }
}
