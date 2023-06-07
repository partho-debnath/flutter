import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 80,
          width: 200,
          color: Colors.purple,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: const Text(
            'Container Widget 1',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 170,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black,
                    offset: Offset(10, 0),
                    spreadRadius: 0.5,
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.green,
                    offset: Offset(0, 10),
                    spreadRadius: 0.2,
                  ),
                ],
                border: Border(
                  left: BorderSide(
                    color: Colors.red,
                    width: 10,
                  ),
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                  top: BorderSide(
                    color: Colors.purple,
                    width: 15,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 20,
                  ),
                ),
              ),
              child: const Text(
                'Container Widget 2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.green.withOpacity(0.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
                border: const Border(
                  left: BorderSide(
                    color: Colors.red,
                    width: 10,
                  ),
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                  top: BorderSide(
                    color: Colors.purple,
                    width: 15,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 20,
                  ),
                ),
              ),
              child: const Text(
                'Container Widget 2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          width: 200,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.green,
            border: BorderDirectional(
              bottom: BorderSide(
                width: 10,
                color: Colors.red,
              ),
              end: BorderSide(
                width: 10,
                color: Colors.blue,
              ),
              start: BorderSide(
                width: 10,
                color: Colors.yellow,
              ),
              top: BorderSide(
                width: 10,
                color: Colors.indigo,
              ),
            ),
          ),
          child: const Text(
            'Container Widget 3',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 140,
              width: 140,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.red, width: 5),
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.elliptical(50, 110),
                  right: Radius.circular(30),
                ),
              ),
              child: const Text(
                'Container Widget 3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 140,
              width: 140,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.red, width: 5),
                borderRadius: BorderRadius.circular(70),
              ),
              child: const Text(
                'Container Widget 3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
