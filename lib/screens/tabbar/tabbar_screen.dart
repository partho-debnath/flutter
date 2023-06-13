import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _defaultTabBar();
  }

  DefaultTabController _defaultTabBar() {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar()'),
          bottom: const TabBar(
            // isScrollable: false,
            // indicatorColor: Colors.red,
            // indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.chat),
              ),
              Tab(
                icon: Icon(Icons.call),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('Home'),
            ),
            Center(
              child: Text('Chat'),
            ),
            Center(
              child: Text('Calls'),
            ),
          ],
        ),
      ),
    );
  }
}
