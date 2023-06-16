import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'MediaQuery -> size and orientation.',
            style: _textStyle(context),
          ),
          Text(
            'MediaQuery -> size and orientation.',
            style: _textStyle(context),
          )
        ],
      ),
    );
  }

  TextStyle _textStyle(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Orientation orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 50,
        backgroundColor: Colors.black,
      );
    } else if (size.width > 600) {
      return const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 40,
      );
    }
    return const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
      fontSize: 20,
    );
  }
}
