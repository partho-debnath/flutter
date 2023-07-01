import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(20.0),
      child: ClipRect(
        child: Banner(
          location: BannerLocation.topEnd,
          message: '50% off',
          child: Container(
            height: 150,
            width: 200,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Image.asset(
              'images/rain-light.jpg',
              fit: BoxFit.fill,
              width: 200,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
