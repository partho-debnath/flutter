import 'package:flutter/material.dart';

class MyInk extends StatelessWidget {
  const MyInk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Ink(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.green.shade100.withOpacity(0.8),
                  blurRadius: 1,
                  spreadRadius: 2,
                  offset: const Offset(5, 7),
                ),
              ],
            ),
            child: const Center(child: Text('Ink()')),
          ),
          const SizedBox(height: 50),
          Ink(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 4,
                  offset: const Offset(5, 7),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage('images/rain-light.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                'Ink()',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Ink(
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 4,
                  offset: const Offset(5, 7),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage('images/rain-light.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                'Ink()',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
