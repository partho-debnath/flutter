import 'package:flutter/material.dart';

enum MENUOPTIONS { profile, settings, logout }

class MyPopUpMenuButton extends StatefulWidget {
  const MyPopUpMenuButton({super.key});

  @override
  State<MyPopUpMenuButton> createState() => _MyPopUpMenuButtonState();
}

class _MyPopUpMenuButtonState extends State<MyPopUpMenuButton> {
  MENUOPTIONS selectedOption = MENUOPTIONS.profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton'),
        actions: <Widget>[
          PopupMenuButton<MENUOPTIONS>(
            itemBuilder: (cntxt) {
              return [
                PopupMenuItem<MENUOPTIONS>(
                  value: MENUOPTIONS.profile,
                  enabled: MENUOPTIONS.profile != selectedOption,
                  child: const Text('Profile'),
                ),
                PopupMenuItem<MENUOPTIONS>(
                  value: MENUOPTIONS.settings,
                  enabled: MENUOPTIONS.settings != selectedOption,
                  child: const Text('Settings'),
                ),
                PopupMenuItem<MENUOPTIONS>(
                  value: MENUOPTIONS.logout,
                  enabled: MENUOPTIONS.logout != selectedOption,
                  child: const Text('Logout'),
                ),
              ];
            },
            elevation: 8,
            tooltip: 'Popup Menu',
            onSelected: (MENUOPTIONS selectedValue) {
              switch (selectedValue) {
                case MENUOPTIONS.profile:
                  print('Profile');
                  break;
                case MENUOPTIONS.settings:
                  print('Settings');
                  break;
                case MENUOPTIONS.logout:
                  print('Logout');
              }
              selectedOption = selectedValue;
              if (mounted == true) {
                setState(() {});
              }
            },
            child: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
