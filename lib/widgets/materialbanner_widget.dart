import 'package:flutter/material.dart';

class MyMaterialBanner extends StatelessWidget {
  const MyMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _materialBanners(context);
        },
        child: const Text('showMaterialBanner() as MaterialBanner()'),
      ),
    );
  }

  void _materialBanners(BuildContext context) {
    ScaffoldMessenger.of(context).clearMaterialBanners();

    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        backgroundColor: Colors.grey,
        elevation: 5.0,
        margin: const EdgeInsets.all(5),
        // padding: const EdgeInsets.all(2),
        onVisible: () {
          print('onVisible');
        },
        leading: const Icon(Icons.notifications_active),
        content: const Text('Here is content.'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            icon: const Icon(Icons.notifications_off),
          )
        ],
      ),
    );
  }
}
