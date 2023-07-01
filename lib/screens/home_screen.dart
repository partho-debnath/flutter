import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTile() Widget'),
      ),
      body: const Center(
        child: Text('For more information check all Branches.'),
      ),
    );
  }
}
