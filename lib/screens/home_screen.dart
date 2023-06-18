import 'package:flutter/material.dart';

import '../widgets/show_modal_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('showModalBottomSheet()'),
      ),
      body: const MyShowModalBottomSheet(),
    );
  }
}
