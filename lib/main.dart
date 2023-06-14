import 'package:flutter/material.dart';

// import './screens/navigations/using_namedroute_without_value_passes/home_screen.dart';
// import './screens/navigations//using_namedroute_without_value_passes/screen_two.dart';
// import './screens/navigations/using_namedroute_without_value_passes/screen_one.dart';

import './screens/navigations/using_namedroute_with_value_passes/stateless_widget/home_screen.dart';
import './screens/navigations//using_namedroute_with_value_passes/stateless_widget/screen_two.dart';
import './screens/navigations/using_namedroute_with_value_passes/stateless_widget/screen_one.dart';

void main() {
  runApp(const MyApp());
}

/* 
  this is only for 
  1. "screens/navigations/using_namedroute_without_value_passes"
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (cntxt) => const HomeScreen(),
        ScreenOne.routeName: (cntxt) => const ScreenOne(),
        ScreenTwo.routeName: (context) => const ScreenTwo(),
      },
    );
  }
}
