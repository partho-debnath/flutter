import 'package:flutter/material.dart';

class CenterAndText extends StatelessWidget {
  const CenterAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Text Widgets. This is the center of the text widget. Flutter is an open-source UI software development kit created by Google.',
        // softWrap: false,
        // textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,

        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          // overflow: TextOverflow.ellipsis,
          shadows: <Shadow>[
            Shadow(
              blurRadius: 5,
              color: Colors.white,
              offset: Offset(
                5,
                5,
              ),
            ),
          ],
          decoration: TextDecoration.lineThrough,
          backgroundColor: Colors.red,
          letterSpacing: 5,
          wordSpacing: 10,
        ),
      ),
    );
  }
}
