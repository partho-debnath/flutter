import 'package:flutter/material.dart';

import '../widgets/Mix with SingleSchildScreollView ListView Column Row/column_and_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column() & ListView()'),
      ),
      body: const ColumnListView(),
    );
  }
}
