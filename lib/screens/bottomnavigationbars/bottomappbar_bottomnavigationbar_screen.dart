import 'package:flutter/material.dart';

class MyBottomNavigationBarScreen extends StatefulWidget {
  const MyBottomNavigationBarScreen({super.key});

  @override
  State<MyBottomNavigationBarScreen> createState() =>
      _MyBottomNavigationBarScreenState();
}

class _MyBottomNavigationBarScreenState
    extends State<MyBottomNavigationBarScreen> {
  final List<Map<String, Object>> _widgets = const [
    {'screen': Text('Home'), 'title': 'Home'},
    {'screen': Text('Favourite'), 'title': 'Favourite'},
    {'screen': Text('Search'), 'title': 'Search'},
    {'screen': Text('Setting'), 'title': 'Setting'}
  ];
  int _selectedIndex = 0;

  void _chengeScreen(int index) {
    if (index == _selectedIndex) {
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgets[_selectedIndex]['title'] as String),
      ),
      body: Center(
        child: _widgets[_selectedIndex]['screen'] as Widget,
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.grey,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                print('Home');
                _chengeScreen(0);
              },
              child: const Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                print('Favorite');
                _chengeScreen(1);
              },
              child: const Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                print('search');
                _chengeScreen(2);
              },
              child: const Tab(
                icon: Icon(Icons.search),
                text: 'search',
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                print('Settings');
                _chengeScreen(3);
              },
              child: const Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
