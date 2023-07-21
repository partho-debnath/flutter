import 'package:flutter/material.dart';

import './home_screen.dart';

class ImageSliderApp extends StatelessWidget {
  const ImageSliderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Toast',
      home: HomeScreen(),
    );
  }
}
