import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: Colors.blue[900],
      backgroundColor: Colors.purple,
      elevation: 5,
      mini: true,
      splashColor: Colors.deepPurple,
      tooltip: 'This FloatingActionButton',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          color: Colors.black,
          width: 2,
        ),
      ),
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
