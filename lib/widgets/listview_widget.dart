import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  // const MyListView({super.key});

  final List<String> _cities = [
    'Dhaka',
    'Mirpur-1',
    'Mirpur-2',
    'Mirpur-3',
    'Mirpur-4',
    'Mirpur-5',
    'Mirpur-6',
    'Mirpur-7',
    'Mirpur-8',
    'Mirpur-9',
    'Mirpur-10',
    'Mirpur-11',
    'Mirpur-12',
  ];

  @override
  Widget build(BuildContext context) {
    return _horizontalListViewSepareted();
  }

  Widget _verticalListViewSepareted() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10.0),
      itemCount: _cities.length,
      itemBuilder: (cntxt, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'City Name: ${_cities[index]}',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
      separatorBuilder: (cntxt, index) {
        return const Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 30,
          endIndent: 3,
        );
      },
    );
  }

  Widget _horizontalListViewSepareted() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10.0),
      itemCount: _cities.length,
      itemBuilder: (cntxt, index) {
        return Text(
          'City Name: ${_cities[index]}',
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        );
      },
      separatorBuilder: (cntxt, index) {
        return const SizedBox(width: 20);
      },
    );
  }

  Widget _horizontalListViewBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // reverse: true,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,

      itemCount: _cities.length,
      itemBuilder: (cntxt, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _cities[index],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  Widget _verticalListViewBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      reverse: true,
      itemCount: _cities.length,
      itemBuilder: (cntxt, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _cities[index],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
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
      // reverse: true,
      // scrollDirection: Axis.vertical,
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
