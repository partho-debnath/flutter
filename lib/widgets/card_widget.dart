import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Colors.white,
          elevation: 8,
          margin: const EdgeInsets.all(10),
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30),
            child: Text('Hello World!'),
          ),
        ),
        Card(
          surfaceTintColor: Colors.green,
          color: Colors.grey,
          elevation: 8,
          margin: const EdgeInsets.all(10),
          shadowColor: Colors.red,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30),
            child: Text('Hello World!'),
          ),
        ),
      ],
    );
  }
}
