import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _customizeTabBar();
  }

  DefaultTabController _customizeTabBar() {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar()'),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.deepPurple,
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            isScrollable: false,
            indicatorColor: Colors.purple,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 10.0,
            indicatorPadding: const EdgeInsets.all(7.0),
            labelPadding: const EdgeInsets.all(10.0),
            splashBorderRadius: BorderRadius.circular(50),
            tabs: const <Tab>[
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
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
