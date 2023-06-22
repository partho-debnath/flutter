import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Checkbox(
            value: isTrue,
            onChanged: (bool? value) {
              if (value != null) {
                isTrue = value;
              }
              if (mounted == true) {
                setState(() {});
              }
            },
          ),
          Checkbox(
            activeColor: Colors.green,
            checkColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: const BorderSide(color: Colors.red, width: 2),
            value: isTrue,
            onChanged: (bool? value) {
              if (value != null) {
                isTrue = value;
              }
              if (mounted == true) {
                setState(() {});
              }
            },
          ),
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              value: isTrue,
              onChanged: (bool? value) {
                if (value != null) {
                  isTrue = value;
                }
                if (mounted == true) {
                  setState(() {});
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
