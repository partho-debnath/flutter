import 'package:flutter/material.dart';

enum DropdownMenu { select, profile, settings, account, deshboard }

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  DropdownMenu currentMenu = DropdownMenu.select;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('DecoratedBox()'),
            ),
          ),
          const SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: DropdownButton<DropdownMenu>(
              borderRadius: BorderRadius.circular(50.0),
              // dropdownColor: Colors.grey,
              padding: const EdgeInsets.only(left: 10.0),
              elevation: 8,
              // isExpanded: true,
              // isDense: true,
              // underline: const SizedBox(),
              // icon: const Icon(Icons.arrow_drop_down),
              // iconSize: 40,
              // iconEnabledColor: Colors.green,
              // style: const TextStyle(color: Colors.black),
              value: currentMenu,
              items: <DropdownMenuItem<DropdownMenu>>[
                DropdownMenuItem(
                  value: DropdownMenu.select,
                  child: Text(DropdownMenu.select.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.profile,
                  child: Text(DropdownMenu.profile.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.settings,
                  child: Text(DropdownMenu.settings.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.account,
                  child: Text(DropdownMenu.account.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.deshboard,
                  child: Text(DropdownMenu.deshboard.name),
                ),
              ],
              onChanged: (DropdownMenu? value) {
                print(value);
                if (value != null) {
                  setState(() {
                    currentMenu = value;
                  });
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green.shade100.withOpacity(0.2),
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DropdownButton<DropdownMenu>(
              borderRadius: BorderRadius.circular(5.0),
              // dropdownColor: Colors.grey,
              padding: const EdgeInsets.only(left: 10.0),
              elevation: 8,
              isExpanded: true,
              // isDense: true,
              underline: const SizedBox(),
              icon: const Icon(Icons.arrow_drop_down_rounded),
              iconSize: 50,
              iconEnabledColor: Colors.green,
              style: const TextStyle(color: Colors.black),
              value: currentMenu,
              items: <DropdownMenuItem<DropdownMenu>>[
                DropdownMenuItem(
                  value: DropdownMenu.select,
                  child: Text(DropdownMenu.select.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.profile,
                  child: Text(DropdownMenu.profile.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.settings,
                  child: Text(DropdownMenu.settings.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.account,
                  child: Text(DropdownMenu.account.name),
                ),
                DropdownMenuItem(
                  value: DropdownMenu.deshboard,
                  child: Text(DropdownMenu.deshboard.name),
                ),
              ],
              onChanged: (DropdownMenu? value) {
                print(value);
                if (value != null) {
                  setState(() {
                    currentMenu = value;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
