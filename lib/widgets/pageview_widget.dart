import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  MyPageView({super.key});
  final PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.6,
  );
  final List<Color> colors = [
    Colors.grey,
    Colors.purple,
    Colors.green,
    Colors.cyan,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      pageSnapping: true,
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      itemBuilder: (cntxt, index) {
        return Center(
          child: Container(
            height: 100,
            width: 200,
            color: colors[index],
            alignment: Alignment.center,
            child: Text('<-- Page ${index + 1}/${colors.length} -->'),
          ),
        );
      },
      onPageChanged: (index) {
        print(index);
      },
    );
  }
}
