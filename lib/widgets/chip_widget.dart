import 'package:flutter/material.dart';

class MyChip extends StatefulWidget {
  const MyChip({super.key});

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  int index = 0;
  List<int> list = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Chip(
            label: Text(
              'Hello World',
            ),
          ),
          const Chip(
            label: SizedBox(
              width: 800,
              child: Text(
                'Hello World sgs stgggggggggs asasfgasgf afa',
                // overflow: TextOverflow.clip,
                softWrap: true,
                maxLines: 3,
                textAlign: TextAlign.center,
                textScaleFactor: 3,
              ),
            ),
          ),
          Chip(
            backgroundColor: Colors.amber,
            deleteIconColor: Colors.red,
            side: const BorderSide(
              color: Colors.green,
              width: 2,
            ),
            avatar: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('H'),
            ),
            label: const Text(
              'Hello World',
            ),
            deleteIcon: const Icon(Icons.close),
            onDeleted: () {},
          ),
          ...list.map((value) {
            return Chip(
              key: ValueKey(value),
              deleteButtonTooltipMessage: 'Delete This Item',
              deleteIconColor: Colors.red,
              avatar: const CircleAvatar(
                child: Text('H'),
              ),
              label: Text('Chip $value'),
              deleteIcon: const Icon(Icons.close),
              onDeleted: () {
                list.remove(value);
                setState(() {});
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
