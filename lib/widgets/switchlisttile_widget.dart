import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  const MySwitchListTile({super.key});

  @override
  State<MySwitchListTile> createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SwitchListTile(
          title: const Text('Sound'),
          subtitle: const Text('Subtitle'),
          value: isActive1,
          onChanged: (currentValue) {
            isActive1 = currentValue;
            updateUI();
          },
        ),
        SwitchListTile.adaptive(
          title: const Text('Sound'),
          subtitle: const Text('Subtitle'),
          value: isActive2,
          onChanged: (currentValue) {
            isActive2 = currentValue;
            updateUI();
          },
        ),
        SwitchListTile(
          title: const Text('Sound'),
          subtitle: const Text('Subtitle'),
          inactiveThumbColor: Colors.amber,
          inactiveTrackColor: Colors.amber.shade200,
          activeColor: Colors.purple,
          // activeTrackColor: Colors.red,
          value: isActive3,
          onChanged: (currentValue) {
            isActive3 = currentValue;
            updateUI();
          },
        ),
        SwitchListTile.adaptive(
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.blue.shade100,
          activeColor: Colors.green,
          // activeTrackColor: Colors.red,
          title: const Text('Sound'),
          subtitle: const Text('Subtitle'),
          value: isActive4,
          onChanged: (currentValue) {
            isActive4 = currentValue;
            updateUI();
          },
        ),
      ],
    );
  }

  void updateUI() {
    if (mounted == true) {
      setState(() {});
    }
  }
}
