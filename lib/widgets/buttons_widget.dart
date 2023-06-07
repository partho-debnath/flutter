import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  animationDuration: const Duration(seconds: 2),
                  elevation: 8,
                  disabledBackgroundColor: Colors.grey,
                  disabledForegroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  maximumSize: const Size(200, 100),
                  minimumSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onLongPress: () {},
                onPressed: () {},
                child: const Text('Submit'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  animationDuration: const Duration(seconds: 2),
                  elevation: 8,
                  disabledBackgroundColor: Colors.grey,
                  disabledForegroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  maximumSize: const Size(200, 100),
                  minimumSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.dashboard),
                label: const Text('Dashboard'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              TextButton.icon(
                icon: const Icon(Icons.dashboard),
                onPressed: () {},
                label: const Text('Dashboard'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.login),
                onPressed: () {},
                label: const Text('Login'),
              ),
            ],
          ),
          IconButton(
            splashColor: Colors.purple,
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
