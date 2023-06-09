import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      // reverse: true,

      child: Center(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 1')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 2')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 3')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 4')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 5')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 6')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 7')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 8')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 9')),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('ElevatedButton 10')),
                ],
              ),
            ),
            const SizedBox(height: 20, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 1')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 2')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 3')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 4')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 5')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 6')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 7')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 8')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 9')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 10')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 11')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 12')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 13')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 14')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 15')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 16')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 17')),
            const SizedBox(height: 10, width: 10),
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton 18')),
            const SizedBox(height: 10, width: 10),
          ],
        ),
      ),
    );
  }
}
