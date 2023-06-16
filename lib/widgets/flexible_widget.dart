import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return _mixFlexibleOne();
  }

  Column _flexibleOne() {
    return Column(
      children: <Widget>[
        Flexible(
          child: Container(
            color: Colors.black,
          ),
        ),
        Flexible(
          child: Container(
            height: 150,
            color: Colors.green,
          ),
        ),
        Flexible(
          child: Container(
            // height: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Column _flexibleTwo() {
    return Column(
      children: <Widget>[
        Flexible(
          // fit: FlexFit.loose,
          flex: 3,
          child: Container(
            color: Colors.black,
          ),
        ),
        Flexible(
          // fit: FlexFit.loose,
          child: Container(
            height: 150,
            color: Colors.green,
          ),
        ),
        Flexible(
          // fit: FlexFit.loose,
          flex: 2,
          child: Container(
            // height: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Column _mixFlexibleOne() {
    return Column(
      children: <Widget>[
        Flexible(
          child: Container(
            height: 200,
            color: Colors.black,
            alignment: Alignment.center,
            child: const Text(
              'Flexible with height 200',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 200,
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text(
            'Fixed height 200',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
          height: 200,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            'Fixed height  200',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Column _mixFlexibleTwo() {
    return Column(
      children: <Widget>[
        Flexible(
          child: Container(
            height: 200,
            color: Colors.black,
            alignment: Alignment.center,
            child: const Text(
              'Flexible with height 200',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 200,
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text(
            'Fixed height 200',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
          height: 400,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            'Fixed height  400',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
