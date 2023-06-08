import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text('C'),
        SizedBox(height: 10, width: 15),
        Text('C++'),
        SizedBox(
          height: 10,
        ),
        Text('Python'),
        SizedBox(height: 10, width: 10),
        Text('Django'),
        SizedBox(height: 10, width: 10),
        SizedBox(
          height: 50,
          width: 220,
          child: Text('Python Framework'),
        ),
        Text('C#'),
        SizedBox(height: 10, width: 10),
        Text('Java'),
        SizedBox(height: 10, width: 30),
        Text('Dart'),
        SizedBox(height: 10, width: 10),
        Text('Flutter'),
      ],
    );
  }
}
