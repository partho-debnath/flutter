import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = 'screen-two/';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Map<String, String> arguments = {'name': '', 'country': ''};

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      setState(() {
        arguments =
            ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Map<String, String> arguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Screen Two NamedRoute with Value.',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Country: ${arguments['country']}, Name: ${arguments['name']}',
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
