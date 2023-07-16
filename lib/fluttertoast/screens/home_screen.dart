import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluttertoast.showToast() Message'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
              ),
              onPressed: () {
                showToastMessage(message: 'Success.', color: Colors.green);
              },
              child: const Text('Tap to Show Success Toast Message'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade700,
              ),
              onPressed: () {
                showToastMessage(
                  message: 'Failed. Try again later.',
                  color: Colors.red.shade700,
                );
              },
              child: const Text('Tap to Show Failed Toast Message'),
            ),
          ],
        ),
      ),
    );
  }

  void showToastMessage({required String message, required Color color}) {
    // Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER_RIGHT,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
