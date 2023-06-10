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
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Bottom Navigation Bar -> ${_widgets[_selectedIndex]['title']}'),
      ),
      body: Center(
        child: _widgets[_selectedIndex]['screen'] as Widget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        iconSize: 25,
        // selectedFontSize: 21,

        currentIndex: _selectedIndex,
        onTap: _chengeScreen,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.deepPurple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
