import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _horizontalListView();
  }

  Widget _horizontalListView() {
    return SizedBox(
      height: 80,
      child: ListView(
        padding: const EdgeInsets.only(top: 20, left: 20),
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Text 1'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Text 2'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Text 3'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Text 4'),
          ),
          const SizedBox(
            width: 100,
            height: 100,
            child: ListTile(
              title: Text('Title 1'),
              subtitle: Text('Subtitle 1'),
            ),
          ),
          const SizedBox(
            width: 100,
            height: 100,
            child: ListTile(
              title: Text('Title 2'),
              subtitle: Text('Subtitle 2'),
            ),
          ),
          const SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('Title 3'),
            ),
          ),
        ],
      ),
    );
  }

  ListView _verticalListView() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // primary: false,
      // shrinkWrap: false,
      reverse: true,
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        ListTile(
          title: Text('Title 1'),
          subtitle: Text('Subtitle 1'),
        ),
        ListTile(
          title: Text('Title 2'),
          subtitle: Text('Subtitle 2'),
        ),
        ListTile(
          title: Text('Title 3'),
          subtitle: Text('Subtitle 3'),
        ),
        ListTile(
          title: Text('Title 4'),
          subtitle: Text('Subtitle 4'),
        ),
        ListTile(
          title: Text('Title 5'),
          subtitle: Text('Subtitle 5'),
        ),
        ListTile(
          title: Text('Title 6'),
          subtitle: Text('Subtitle 6'),
        ),
        ListTile(
          title: Text('Title 7'),
          subtitle: Text('Subtitle 7'),
        ),
        ListTile(
          title: Text('Title 8'),
          subtitle: Text('Subtitle 8'),
        ),
        ListTile(
          title: Text('Title 9'),
          subtitle: Text('Subtitle 9'),
        ),
        ListTile(
          title: Text('Title 10'),
          subtitle: Text('Subtitle 10'),
        ),
        ListTile(
          title: Text('Title 11'),
          subtitle: Text('Subtitle 11'),
        ),
        ListTile(
          title: Text('Title 12'),
          subtitle: Text('Subtitle 13'),
        ),
      ],
    );
  }
}
