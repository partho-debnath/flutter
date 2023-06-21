import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  const MyChip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Chip(
            label: Text(
              'Hello World',
            ),
          ),
          Chip(
            label: SizedBox(
              width: 800,
              child: Text(
                'Hello World sgs stgggggggggs asasfgasgf afa',
                // overflow: TextOverflow.clip,
                softWrap: true,
                maxLines: 3,
                textAlign: TextAlign.center,
                textScaleFactor: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
