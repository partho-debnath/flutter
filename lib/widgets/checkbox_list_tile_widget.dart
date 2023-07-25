import 'package:flutter/material.dart';

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({super.key});

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: const Text('Title'),
              subtitle: const Text('Subtitle'),
              secondary: const Text('Secondary'),
              // activeColor: Colors.purple,
              checkColor: Colors.black,
              tileColor: Colors.grey.shade300,
              selected: isChecked,
              selectedTileColor: Colors.green.shade100,
              checkboxShape: const CircleBorder(),
              enabled: true,
              fillColor: MaterialStateProperty.resolveWith((states) {
                // If the CheckboxListTile is select, return green, otherwise red
                if (states.contains(MaterialState.selected)) {
                  return Colors.green;
                }
                return Colors.red;
              }),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value as bool;
                });
              },
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.green),
              ),

              side: const BorderSide(width: 5, strokeAlign: 2),
              title: const Text('Title'),
              subtitle: const Text('Subtitle'),
              secondary: const Text('Secondary'),
              // activeColor: Colors.purple,
              checkColor: Colors.black,
              tileColor: Colors.grey.shade300,
              selected: isChecked,
              selectedTileColor: Colors.green.shade100,
              checkboxShape: const CircleBorder(),
              enabled: true,
              fillColor: MaterialStateProperty.resolveWith((states) {
                // If the CheckboxListTile is select, return green, otherwise red
                if (states.contains(MaterialState.selected)) {
                  return Colors.green;
                }
                return Colors.red;
              }),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value as bool;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
