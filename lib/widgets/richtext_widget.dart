import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          RichText(
            text: const TextSpan(
              text: 'Flutter is an ',
              style: TextStyle(
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'open-source ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'UI software ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextSpan(text: 'development kit '),
                TextSpan(text: 'created by '),
                TextSpan(
                  text: 'Google',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.grey,
                  ),
                ),
                TextSpan(text: '. '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
