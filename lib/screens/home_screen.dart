import 'package:flutter/material.dart';

import '../widgets/rangeslider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RangeSlider()'),
      ),
      body: const MyRangeSlider(),
    );
  }
}
