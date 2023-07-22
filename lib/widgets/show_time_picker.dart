import 'package:flutter/material.dart';

class MyShowTimePicker extends StatefulWidget {
  const MyShowTimePicker({super.key});

  @override
  State<MyShowTimePicker> createState() => _MyShowTimePickerState();
}

class _MyShowTimePickerState extends State<MyShowTimePicker> {
  TimeOfDay? time;

  @override
  void initState() {
    time = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$time'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await showTime();
            },
            child: const Text('Slect Time'),
          )
        ],
      ),
    );
  }

  Future<void> showTime() async {
    time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      orientation: Orientation.portrait,
      helpText: 'Select Time',
      cancelText: 'Close',
      confirmText: 'Confirm',
    );

    time ??= TimeOfDay.now();

    setState(() {});
  }
}
