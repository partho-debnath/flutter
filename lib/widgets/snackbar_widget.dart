import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _snackBar(context);
        },
        child: const Text('Tap Here. showSnackBar()'),
      ),
    );
  }

  void _snackBar(BuildContext context) {
    // ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        duration: const Duration(seconds: 2),
        content: const Text('Show content.'),
        action: SnackBarAction(
          backgroundColor: Colors.white38,
          textColor: Colors.black,
          disabledBackgroundColor: Colors.black,
          disabledTextColor: Colors.white,
          label: 'UNO',
          onPressed: () {
            print('Undo');
          },
        ),
      ),
    );
  }
}
