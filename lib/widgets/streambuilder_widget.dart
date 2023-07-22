import 'package:flutter/material.dart';

class MyStreamBuilder extends StatelessWidget {
  const MyStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: generateStream(6),
        builder: (cntxt, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Text(
              'Error Occured.',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            );
          } else {
            return Text(
              snapshot.data.toString(),
              style: const TextStyle(fontSize: 30),
            );
          }
        },
      ),
    );
  }

  Stream<int> generateStream(int range) async* {
    for (int i = 1; i <= range; i++) {
      yield i;
      await Future<void>.delayed(const Duration(seconds: 1));
    }
    throw 'An error occured';
  }
}
