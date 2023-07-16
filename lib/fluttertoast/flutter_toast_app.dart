import 'package:flutter/material.dart';

import './screens/home_screen.dart';

class FlutterToastApp extends StatelessWidget {
  const FlutterToastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Toast',
      home: HomeScreen(),
    );
  }
}
