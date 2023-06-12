import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          Text('Hello World 1'),
          Divider(
            color: Colors.red,
            indent: 80,
            endIndent: 50,
            thickness: 2,
            height: 20.0, // default height 16.0
          ),
          Text('Hello World 2'),
          Divider(
            color: Colors.black,
            indent: 30,
            endIndent: 50,
            thickness: 2,
            height: 20.0, // default height 16.0
          ),
          Text('Hello World 3'),
          Divider(
            color: Colors.blue,
            indent: 30,
            endIndent: 80,
            thickness: 2,
            height: 20.0, // default height 16.0
          ),
          Text('Hello World 4'),
          Divider(
            color: Colors.purple,
            indent: 30,
            endIndent: 50,
            thickness: 2,
            height: 20.0, // default height 16.0
          ),
          Text('Hello World 5'),
          Divider(
            color: Colors.green,
            indent: 30,
            endIndent: 50,
            thickness: 5,
            height: 50.0, // default height 16.0
          ),
          Text('Hello World 6'),
        ],
      ),
    );
  }
}
