import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.down,
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
