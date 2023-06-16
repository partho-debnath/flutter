import 'package:flutter/material.dart';

/*
NamedRoute without value passes.
*/

// import './screens/navigations/using_namedroute_without_value_passes/home_screen.dart';
// import './screens/navigations//using_namedroute_without_value_passes/screen_two.dart';
// import './screens/navigations/using_namedroute_without_value_passes/screen_one.dart';

/*
NamedRoute with value passes for StatelessWidget.
*/

// import './screens/navigations/using_namedroute_with_value_passes/stateless_widget/home_screen.dart';
// import './screens/navigations//using_namedroute_with_value_passes/stateless_widget/screen_two.dart';
// import './screens/navigations/using_namedroute_with_value_passes/stateless_widget/screen_one.dart';

/*
NamedRoute with value passes for StatefulWidget.
*/

// import './screens/navigations/using_namedroute_with_value_passes/stateful_widget/home_screen.dart';
// import './screens/navigations//using_namedroute_with_value_passes/stateful_widget/screen_two.dart';
// import './screens/navigations/using_namedroute_with_value_passes/stateful_widget/screen_one.dart';

/*
pass back data, current screen to previous screen without NamedRoute.
*/

import './screens/navigations/pass_back_data_current_screen_to_previous/without_named_route/home_screen.dart';

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
      home: HomeScreen(),
      // initialRoute: HomeScreen.routeName,
      // routes: {
      //   HomeScreen.routeName: (cntxt) => const HomeScreen(),
      //   ScreenOne.routeName: (cntxt) => const ScreenOne(),
      //   ScreenTwo.routeName: (context) => const ScreenTwo(),
      // },
    );
  }
}
