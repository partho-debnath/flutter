import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is For Center Widget. Centering a Child Widget.'),
    );
  }
}
