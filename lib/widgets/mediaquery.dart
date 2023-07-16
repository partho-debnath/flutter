import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final Orientation orientation = MediaQuery.orientationOf(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'MediaQuery -> Size: ${size.width.toStringAsFixed(0)}, Orientation: ${orientation.name}',
            style: _textStyle(context, orientation, size),
          ),
          Text(
            'MediaQuery -> Size: ${size.width.toStringAsFixed(0)}, Orientation: ${orientation.name}',
            style: _textStyle(context, orientation, size),
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle(
      BuildContext context, Orientation orientation, Size size) {
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
        color: Colors.green,
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
