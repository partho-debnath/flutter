import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      // height: double.infinity,
      // width: double.infinity,
      // alignment: Alignment.center,
      child: Stack(
        // alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 350,
            width: 350,
          ),
          Container(
            color: Colors.green,
            height: 200,
            width: 200,
          ),
          Positioned(
            top: 120,
            left: 150,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: const Text('Inside Blue'),
            ),
          ),
          const Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Hello World',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
