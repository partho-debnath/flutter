import 'package:flutter/material.dart';

import '../widgets/expansiontile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile()'),
      ),
      body: const MyExpansionTile(),
    );
  }
}
