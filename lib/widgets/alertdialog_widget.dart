import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return _buttonWithCustomizeAlertDialog(context);
  }

  Center _buttonWithDefaultAlertDialog(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          bool? yesOrNo = await _defaultAlertDialog(context);

          if (yesOrNo == true) {
            print('Logout');
          } else if (yesOrNo == false) {
            print('Not Logout.');
          }
        },
        child: const Text('Click Me'),
      ),
    );
  }

  Future<bool?> _defaultAlertDialog(BuildContext context) {
    return showDialog<bool?>(
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

  Center _buttonWithCustomizeAlertDialog(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          bool? yesOrNo = await _myCustomizeAlertDialog(context);

          if (yesOrNo == true) {
            print('Logout');
          } else if (yesOrNo == false) {
            print('Not Logout.');
          }
        },
        child: const Text('Click Me'),
      ),
    );
  }

  Future<bool?> _myCustomizeAlertDialog(BuildContext context) {
    return showDialog<bool?>(
      /// barrierDismissible: false. means, when a user
      /// tap outside the "AlertDialog" that "AlertDialog" is not closed.
      barrierDismissible: false,

      /// barrierColor: Colors.amber. means outside the "AlertDialog" color
      barrierColor: Colors.amberAccent,
      // useSafeArea: false,

      context: context,
      builder: (cntxt) {
        return AlertDialog(
          /// set position of the AlertDialog
          alignment: Alignment.topCenter,
          elevation: 10,
          contentPadding: const EdgeInsets.all(10),
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.purple,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
