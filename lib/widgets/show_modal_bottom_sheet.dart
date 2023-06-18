import 'package:flutter/material.dart';

class MyShowModalBottomSheet extends StatelessWidget {
  const MyShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _myshowModalBottomSheet(context);
        },
        child: const Text('Tap here'),
      ),
    );
  }

  void _myshowModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      isDismissible: true,
      barrierColor: Colors.red.withOpacity(0.2),
      backgroundColor: Colors.grey,
      showDragHandle: true,
      enableDrag: false,

      /// when isScrollControlled: true, than full screen
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        side: BorderSide(
          color: Colors.white,
        ),
      ),
      context: context,
      builder: (cntxt) {
        return const SizedBox(
          /// when use fixed size, then isScrollControlled: true, not work
          // height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Text('Hello World.'),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('E-mail'),
                    hintText: 'flutter@dart.com',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
