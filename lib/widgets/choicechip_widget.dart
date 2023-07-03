import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool isSelected = false;
  int? selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ChoiceChip(
            elevation: 5,
            backgroundColor: Colors.green,
            selectedColor: Colors.purple,
            avatar: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('C'),
            ),
            side: const BorderSide(
              color: Colors.amber,
              width: 2,
              strokeAlign: 3,
            ),
            label: const Text('ChoiceChip()'),
            selected: isSelected,
            onSelected: (value) {
              setState(() {
                isSelected = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            children: <Widget>[
              ...List.generate(3, (index) {
                return ChoiceChip(
                  avatar:
                      selectedIndex == index ? const Icon(Icons.done) : null,
                  label: Text('Item $index'),
                  selected: index == selectedIndex,
                  backgroundColor: Colors.purple.shade100,
                  selectedColor: Colors.purple.shade300,
                  side: const BorderSide(
                    color: Colors.purple,
                    width: 2,
                    // strokeAlign: 3,
                  ),
                  onSelected: (value) {
                    setState(() {
                      selectedIndex = value ? index : null;
                    });
                  },
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}
