import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController carouselController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselSlider(). Image Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              initialPage: activeIndex,
              height: 210,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              reverse: false,
              viewportFraction: 0.6,
              pageSnapping: true,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              // enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            items: <Widget>[
              buildImage('assets/images/dandelion.jpg'),
              buildImage('assets/images/flower.jpg'),
              buildImage('assets/images/rain-light.jpg'),
              buildImage('assets/images/flower.jpg'),
            ],
          ),
          const SizedBox(height: 10),
          buildIndicator(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  carouselController.previousPage(
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  carouselController.nextPage(
                    duration: const Duration(milliseconds: 10),
                  );
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox buildImage(String imagePath) {
    return SizedBox(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }

  AnimatedSmoothIndicator buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 4,
      effect: const ScrollingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: Colors.blue,
      ),
      onDotClicked: (index) {
        carouselController.animateToPage(index);
        setState(() {
          activeIndex = index;
        });
      },
    );
  }
}
