import 'package:flutter/material.dart';

class MyButtonSheet extends StatelessWidget {
  MyButtonSheet({super.key});
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: const Text('showBottomSheet()'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showButtonSheet(context);
          },
          child: const Text('Tap on showBottomSheet()'),
        ),
      ),
    );
  }

  void _showButtonSheet(BuildContext context) {
    scaffoldState.currentState!.showBottomSheet(
      (context) {
        return Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: const Text(
            'showBottomSheet() is not used for user interaction.This is only for display Information.',
            softWrap: true,
            textScaleFactor: 1.2,
          ),
        );
      },
      backgroundColor: Colors.grey,
      elevation: 8.0,
      enableDrag: true,
      clipBehavior: Clip.antiAlias,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        side: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
