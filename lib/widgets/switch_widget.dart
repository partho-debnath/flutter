import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Switch(
            value: isTrue,
            onChanged: (bool value) {
              isTrue = value;
              if (mounted == true) {
                setState(() {});
              }
            },
          ),
          Switch(
            activeColor: Colors.purple,
            activeTrackColor: Colors.amberAccent,
            inactiveThumbColor: Colors.red,
            inactiveTrackColor: Colors.green,
            value: isTrue,
            onChanged: (bool value) {
              isTrue = value;
              if (mounted == true) {
                setState(() {});
              }
            },
          ),
          Transform.scale(
            scale: 1.5,
            child: Switch(
              activeColor: Colors.purple,
              // activeTrackColor: Colors.amberAccent,
              inactiveThumbColor: Colors.green,
              // inactiveTrackColor: Colors.green,
              value: isTrue,
              onChanged: (bool value) {
                isTrue = value;
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
