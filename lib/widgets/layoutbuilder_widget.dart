import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _myLayoutBuilder(),
    );
  }

  LayoutBuilder _myLayoutBuilder() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print('MaxWidth ${constraints.maxWidth}');
        print('MaxHeight: ${constraints.maxHeight}');

        if (constraints.maxWidth > 400) {
          return Container(
            height: 500,
            width: 400,
            color: Colors.red,
            child: const Text('MaxWidth Greater than 400'),
          );
        } else {
          return Container(
            height: 300,
            width: 300,
            color: Colors.green,
            child: const Text('MaxWidth Less than 400'),
          );
        }
      },
    );
  }
}
