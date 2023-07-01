import 'package:flutter/material.dart';

class MyAboutDialog extends StatelessWidget {
  const MyAboutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          await _defaultAboutDialog(context);
        },
        child: const Text('Click Me, AboutDialog()'),
      ),
    );
  }

  Future<void> _defaultAboutDialog(BuildContext context) {
    return showDialog<void>(
      /// barrierDismissible: false. means, when a user
      /// tap outside the "AboutDialog" that "AboutDialog" is not closed.
      barrierDismissible: false,

      /// barrierColor: Colors.amber. means outside the "AboutDialog" color
      // barrierColor: Colors.deepPurple,
      useSafeArea: false,
      context: context,
      builder: (cntxt) {
        return const AboutDialog(
          applicationIcon: Icon(Icons.flutter_dash),
          applicationName: 'Flutter App',
          applicationVersion: 'Version 1.0.0',
          applicationLegalese: 'Legals',
          children: [
            Text('This is a text created by Flutter app.'),
          ],
        );
      },
    );
  }
}
