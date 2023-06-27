import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double currentPosition = 10.0;
  double currentPosition2 = 0.0;
  double currentPosition3 = 30.0;
  double currentPosition4 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          min: 0,
          max: 100,
          divisions: 100,
          label: currentPosition.toStringAsFixed(2),
          value: currentPosition,
          onChanged: (currentValue) {
            currentPosition = currentValue;
            if (mounted == true) {
              setState(() {});
            }
          },
        ),
        const Divider(),
        Slider(
          activeColor: Colors.purple,
          inactiveColor: Colors.purple.shade100,
          min: 0,
          max: 100,
          divisions: 100,
          label: currentPosition2.toStringAsFixed(2),
          value: currentPosition2,
          onChanged: (currentValue) {
            currentPosition2 = currentValue;
            if (mounted == true) {
              setState(() {});
            }
          },
        ),
        const Divider(thickness: 5),
        const SizedBox(height: 30),
        Slider(
          min: 0,
          max: 100,
          divisions: 100,
          label: currentPosition3.toStringAsFixed(2),
          value: currentPosition3,
          onChanged: (currentValue) {
            currentPosition3 = currentValue;
            if (mounted == true) {
              setState(() {});
            }
          },
        ),
        Slider(
          min: 0,
          max: 100,
          divisions: 100,
          label:
              'Primary: ${currentPosition4.toStringAsFixed(1)}  Sce: ${currentPosition3.toStringAsFixed(1)}',
          value: currentPosition4,
          secondaryTrackValue: currentPosition3,
          onChanged: (currentValue) {
            currentPosition4 = currentValue;
            if (mounted == true) {
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
