import 'package:flutter/material.dart';

class MyDecoratedBox extends StatelessWidget {
  const MyDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text('DecoratedBox()'),
              ),
            ),
          ),
          const SizedBox(height: 50),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade100,
              border: Border.all(
                color: Colors.deepPurple,
                width: 2,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25.0),
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple.shade100,
                  Colors.deepPurple.shade300,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const SizedBox(
              height: 80,
              child: Center(
                child: Text('DecoratedBox()'),
              ),
            ),
          ),
          const SizedBox(height: 50),
          DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              border: Border.all(
                color: Colors.red,
                width: 1,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('images/rain-light.jpg'),
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBox(
              height: 200,
              width: 200,
              child: FittedBox(
                child: Text(
                  'Images',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
