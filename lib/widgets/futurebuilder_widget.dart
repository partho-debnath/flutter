import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: generateAnotherList(),
      builder: (cntxt, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError == true) {
          return const Center(child: Text('Error'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (cntxt, index) {
              return Center(child: Text(snapshot.data![index]));
            },
          );
        }
      },
    );
  }

  Future<List<String>> generateList() async {
    await Future.delayed(const Duration(seconds: 5));
    // throw 'An error occured';
    return ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L'];
  }

  Future<List<String>> generateAnotherList() {
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        return [
          'Z',
          'Test',
          'A',
          'B',
          'C',
          'D',
          'E',
          'F',
          'G',
          'H',
          'I',
          'J',
          'K',
          'L'
        ];
      },
    );
  }
}
