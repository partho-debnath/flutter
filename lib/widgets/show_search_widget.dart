import 'package:flutter/material.dart';

class MyShowSearch extends StatefulWidget {
  const MyShowSearch({super.key});

  @override
  State<MyShowSearch> createState() => _MyShowSearchState();
}

class _MyShowSearchState extends State<MyShowSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          },
          icon: const Icon(Icons.search),
        )
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<String> searchTerms = [
    'Apple',
    'Carrot',
    'Coffee',
    'Orange',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (String item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (cntxt, index) {
        return ListTile(title: Text(matchQuery[index]));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (String item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (cntxt, index) {
        return Card(
          child: ListTile(
            title: Text(matchQuery[index]),
            onTap: () {
              print(matchQuery[index]);
            },
          ),
        );
      },
    );
  }
}
