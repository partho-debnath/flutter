import 'package:flutter/material.dart';

import '../widgets/closebutton_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CloseButton() Widget'),
      ),
      body: const MyCloseButton(),
    );
  }
}
