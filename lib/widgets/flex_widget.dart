import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return _flexWithVertical();
  }

  Flex _flexWithVertical() {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      // verticalDirection: VerticalDirection.up,
      children: <Widget>[
        Container(
          height: 200,
          width: 500,
          color: Colors.black,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.green,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.blue,
        ),
      ],
    );
  }

  Flex _flexWithHorizontal() {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 200,
          width: 500,
          color: Colors.black,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.green,
        ),
        Container(
          height: 200,
          width: 500,
          color: Colors.blue,
        ),
      ],
    );
  }
}
