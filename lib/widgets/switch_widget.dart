import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isTrue = false;

  // ? this is work when  MaterialApp(theme: ThemeData(useMaterial3: true)),
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

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
          Switch(
            thumbIcon: thumbIcon,
            value: isTrue,
            onChanged: (bool value) {
              isTrue = value;
              if (mounted == true) {
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
