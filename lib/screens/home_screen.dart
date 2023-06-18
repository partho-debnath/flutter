import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer()'),
      ),
      body: null,
      drawer: const MyDrawer(),
    );
  }
}
