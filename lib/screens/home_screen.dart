import 'package:flutter/material.dart';

import '../widgets/pageview_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView(),  Widget'),
      ),
      body: MyPageView(),
    );
  }
}
