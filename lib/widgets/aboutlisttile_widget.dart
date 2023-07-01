import 'package:flutter/material.dart';

class MyAboutListTile extends StatelessWidget {
  const MyAboutListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: Icon(Icons.flutter_dash),
        applicationName: 'Flutter App',
        applicationVersion: 'Version 1.0.0',
        applicationLegalese: 'Legals',
        // dense: true,
        aboutBoxChildren: [
          Text('This is a text created by Flutter app.'),
        ],
        // child: Text('About'),
      ),
    );
  }
}
