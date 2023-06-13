import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Future<bool?> yesOrNo = _myAlertDialog(context);
          yesOrNo.then((value) {
            if (value == true) {
              print('Logout');
            } else if (value == false) {
              print('Not Logout.');
            }
          });
        },
        child: const Text('Click Me'),
      ),
    );
  }

  Future<bool?> _myAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (cntxt) {
        return AlertDialog(
          icon: const Icon(Icons.logout),
          iconColor: Colors.red,
          title: const Text('Are you sure?'),
          content: const Text('Do you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
