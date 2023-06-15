import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return _gridViewBuilder();
  }

  GridView _gridViewBuilder() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: 20,
      itemBuilder: (cntxt, index) {
        return _buildContainer(index);
      },
    );
  }

  GridView _gridViewWithMaxCrossAxisExtent() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,

        /// childAspectRatio: width/height
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        // mainAxisExtent: 100,
      ),
      padding: const EdgeInsets.all(8.0),
      // scrollDirection: Axis.horizontal,
      children: [
        for (int i = 1; i <= 25; i++) _buildContainer(i),
      ],
    );
  }

  GridView _gridViewWithFixedCrossAxisCount() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      // scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8.0),
      children: [
        for (int i = 1; i <= 20; i++) _buildContainer(i),
      ],
    );
  }

  Container _buildContainer(int i) {
    return Container(
      // height: 100,
      // width: 500,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green.shade500,
            Colors.green.shade300,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.1, 0.5],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Text('Container $i'),
    );
  }
}
