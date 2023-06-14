import 'package:flutter/material.dart';

class MyCircularAndLinearProgressIndicator extends StatelessWidget {
  const MyCircularAndLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const CircularProgressIndicator(
            backgroundColor: Colors.amber,
            color: Colors.green,
            strokeWidth: 10.0,

            /// Progress lavel 0 to 1
            // value: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: LinearProgressIndicator(
              color: Colors.green,
              backgroundColor: Colors.blue.withOpacity(0.6),
              minHeight: 6,

              /// Progress lavel 0 to 1
              // value: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
