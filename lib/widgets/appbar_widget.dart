import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurple,
        elevation: 8,
        forceMaterialTransparency: false,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.app_registration),
        leadingWidth: 56,
        primary: false,
        titleSpacing: 100,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.green,
          fontSize: 25,
        ),
        centerTitle: true,
        title: const Text('Flutter Widgets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
