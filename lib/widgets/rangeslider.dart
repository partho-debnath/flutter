import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues rangeValues = const RangeValues(0.0, 100.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RangeSlider(
        min: 0.0,
        max: 100.0,
        activeColor: Colors.green,
        inactiveColor: Colors.green.shade200,
        divisions: 5,
        labels: RangeLabels(
          rangeValues.start.round().toString(),
          rangeValues.end.round().toString(),
        ),
        values: rangeValues,
        onChanged: (RangeValues values) {
          setState(() {
            rangeValues = values;
          });
          print(rangeValues);
          print(rangeValues.start);
          print(rangeValues.end);
        },
      ),
    );
  }
}
