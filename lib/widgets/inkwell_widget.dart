import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.amber,
        onLongPress: () {
          print('on Long Press');
        },
        onTap: () {
          print('on Tap');
        },
        child: Image.asset(
          'images/rain-light.jpg',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
