import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.dashboard,
        color: Colors.indigo,
        size: 50,
        shadows: [
          Shadow(
            color: Colors.indigo,
            blurRadius: 50,
            offset: Offset(10, 10),
          )
        ],
      ),
    );
  }
}
