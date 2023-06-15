import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1 / 2.4,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
