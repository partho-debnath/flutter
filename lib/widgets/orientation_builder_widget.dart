import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatelessWidget {
  const MyOrientationBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OrientationBuilder(
        builder: (context, orientation) {
          return Visibility(
            visible: Orientation.portrait == orientation,
            replacement: const Text('This is Landscape mode.'),
            child: const Text('This is Portrait mode.'),
          );
        },
      ),
    );
  }
}
