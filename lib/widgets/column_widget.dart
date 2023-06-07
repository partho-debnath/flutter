import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      textBaseline: TextBaseline.alphabetic,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      children: [
        Text('C Prgoramming.'),
        Text('C++.'),
        Text('Python, Django'),
        Text('java'),
        Text('C#'),
        Text('Dart, Flutter'),
      ],
    );
  }
}
