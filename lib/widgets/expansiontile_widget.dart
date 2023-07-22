import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          leading: const Icon(Icons.read_more),
          title: const Text('See More'),
          subtitle: const Text('Subtitle'),
          childrenPadding: const EdgeInsetsDirectional.only(start: 10),
          backgroundColor: Colors.grey.shade300,
          collapsedBackgroundColor: Colors.grey,
          iconColor: Colors.green,
          children: const <Widget>[
            ListTile(title: Text('List 1')),
            ListTile(title: Text('List 2')),
            ListTile(title: Text('List 3')),
            ListTile(title: Text('List 4')),
          ],
        ),
        const Card(child: ListTile(title: Text('Data'))),
        ExpansionTile(
          leading: const Icon(Icons.read_more),
          title: const Text('See More'),
          subtitle: const Text('Subtitle'),
          childrenPadding: const EdgeInsetsDirectional.only(start: 10),
          backgroundColor: Colors.grey,
          collapsedBackgroundColor: Colors.grey.shade300,
          // iconColor: Colors.green,
          children: const <Widget>[
            ListTile(title: Text('List 1')),
            ListTile(title: Text('List 2')),
            ListTile(title: Text('List 3')),
            ListTile(title: Text('List 4')),
          ],
        ),
      ],
    );
  }
}
