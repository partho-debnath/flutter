import 'package:flutter/material.dart';

class MyWillPopScope extends StatelessWidget {
  const MyWillPopScope({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (cntxt) => const AnotherScreen()),
          );
        },
        child: const Text('Go to Another Screen'),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// when onWillPop return false, than user can not go back the
    ///  previous screen using device back button
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.purple,
          title: const Text('Another Screen'),
        ),
        body: const Center(
          child: Text(
              'This is Another Screen. Go back the previous screen using top left button'),
        ),
      ),
    );
  }
}
