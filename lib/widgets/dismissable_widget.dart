import 'package:flutter/material.dart';

class MyDismissable extends StatefulWidget {
  const MyDismissable({super.key});

  @override
  State<MyDismissable> createState() => _MyDismissableState();
}

class _MyDismissableState extends State<MyDismissable> {
  List<int> list = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext cntxt, int index) {
        return Dismissible(
          key: ValueKey(list.elementAt(index)),
          background: Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            padding: const EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Delete'),
                SizedBox(width: 20),
                Icon(Icons.delete),
              ],
            ),
          ),
          // direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            // if (direction == DismissDirection.startToEnd) {
            // }

            list.removeAt(index);
            if (mounted == true) setState(() {});
          },
          confirmDismiss: (direction) {
            // if (direction == DismissDirection.startToEnd) {
            //   return Future.value(true);
            // } else {
            //   return Future.value(false);
            // }

            return showDialog<bool?>(
              context: context,
              builder: (cntxt) {
                return AlertDialog(
                  icon: const Icon(Icons.delete_forever),
                  iconColor: Colors.red,
                  title: const Text('Are you sure?'),
                  content: const Text(
                    'Do you want to delete this task?',
                  ),
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.spaceAround,
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(cntxt).pop(false);
                      },
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(cntxt).pop(true);
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Card(
            color: Colors.blueAccent,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${list.elementAt(index)}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
