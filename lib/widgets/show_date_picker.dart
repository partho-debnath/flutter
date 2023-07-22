import 'package:flutter/material.dart';

class MyShowDatePicher extends StatefulWidget {
  const MyShowDatePicher({super.key});

  @override
  State<MyShowDatePicher> createState() => _MyShowDatePicherState();
}

class _MyShowDatePicherState extends State<MyShowDatePicher> {
  DateTime? dateTime;

  @override
  void initState() {
    dateTime = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$dateTime'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await showDate();
            },
            child: const Text('Slect Date'),
          )
        ],
      ),
    );
  }

  Future<void> showDate() async {
    dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendar,
    );
    dateTime ??= DateTime.now();
    setState(() {});
  }
}
