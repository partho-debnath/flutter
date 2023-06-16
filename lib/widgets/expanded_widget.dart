import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return _expanded();
  }

  Column _expanded() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Container(
            // height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            // height: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Column _mixExpanded() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        Container(
          height: 100,
          color: Colors.green,
        ),
      ],
    );
  }
}
