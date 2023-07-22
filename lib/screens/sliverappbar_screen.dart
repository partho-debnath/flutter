import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: const Text('SliverAppBar()'),
            // centerTitle: true,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              )
            ],
            expandedHeight: 200.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar()'),
              background: FlutterLogo(),
            ),
            pinned: true,
            snap: false,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
