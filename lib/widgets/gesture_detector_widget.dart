import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text('GestureDetector'),
          GestureDetector(
            onDoubleTap: () {
              print('on Double Tap');
            },
            onTap: () {
              print('on Tap');
            },
            onLongPress: () {
              print('on Long Press');
            },
            child: Image.asset(
              'images/rain-light.jpg',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
