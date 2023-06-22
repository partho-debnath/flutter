import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({super.key});

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Switch(
              value: isVisible,
              onChanged: (bool value) {
                isVisible = value;
                if (mounted == true) {
                  setState(() {});
                }
              },
            ),
          ),
          _usingTernaryOperator(),
          _visibilityWithReplacement(),
        ],
      ),
    );
  }

  Text _usingTernaryOperator() {
    return isVisible == true
        ? const Text('True. This Line Using Ternary Operator')
        : const Text('False. This Line Using Ternary Operator');
  }

  Visibility _visibilityWithOutReplacement() {
    return Visibility(
      visible: isVisible,
      child: Container(
        color: Colors.amber,
        height: 100,
        width: 200,
        alignment: Alignment.center,
        child: const Text('Visibility()'),
      ),
    );
  }

  Visibility _visibilityWithReplacement() {
    return Visibility(
      /// when  maintainState: true, the replacement is not visible. This
      /// is same is _visibilityWithOutReplacement()
      // maintainState: true,
      visible: isVisible,
      replacement: const Text('This is replacement.'),
      child: Container(
        color: Colors.amber,
        height: 100,
        width: 200,
        alignment: Alignment.center,
        child: const Text('Visibility()'),
      ),
    );
  }
}
