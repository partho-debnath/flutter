import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatelessWidget {
  const MyInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: 'zoom',
        child: InteractiveViewer(
          /// for zoom level
          maxScale: 5.0,
          child: Image.asset(
            'assets/images/rain-light.jpg',
            height: 200,
            width: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
