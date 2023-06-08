import 'package:flutter/material.dart';

// import './screens/home_screen.dart';
import './screens/my_floating_action_button_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      home: MyFloatingActionButtonScreen(),
    );
  }
}
