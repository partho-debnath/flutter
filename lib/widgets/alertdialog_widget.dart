import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () async {
              bool? yesOrNo = await _defaultAlertDialog(context);

              if (yesOrNo == true) {
                print('Logout');
              } else if (yesOrNo == false) {
                print('Not Logout.');
              }
            },
            child: const Text('Click Me'),
          ),
          ElevatedButton(
            onPressed: () async {
              bool? yesOrNo = await _myCustomizeAlertDialog(context);

              if (yesOrNo == true) {
                print('Logout');
              } else if (yesOrNo == false) {
                print('Not Logout.');
              }
            },
            child: const Text('Click Me'),
          ),
          ElevatedButton(
            onPressed: () {
              showCustomAlertDialog(context);
            },
            child: const Text('Custom. with image'),
          ),
        ],
      ),
    );
  }

  Future<bool?> _defaultAlertDialog(BuildContext context) {
    return showDialog<bool?>(
      context: context,
      builder: (cntxt) {
        return AlertDialog(
          icon: const Icon(Icons.logout),
          iconColor: Colors.red,
          title: const Text('Are you sure?'),
          content: const Text('Do you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  Future<bool?> _myCustomizeAlertDialog(BuildContext context) {
    return showDialog<bool?>(
      /// barrierDismissible: false. means, when a user
      /// tap outside the "AlertDialog" that "AlertDialog" is not closed.
      barrierDismissible: false,

      /// barrierColor: Colors.amber. means outside the "AlertDialog" color
      barrierColor: Colors.amberAccent,
      // useSafeArea: false,

      context: context,
      builder: (cntxt) {
        return AlertDialog(
          /// set position of the AlertDialog
          alignment: Alignment.topCenter,
          elevation: 10,
          contentPadding: const EdgeInsets.all(10),
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.purple,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          icon: const Icon(Icons.logout),
          iconColor: Colors.red,
          title: const Text('Are you sure?'),
          content: const Text('Do you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  /// with image
  void showCustomAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (cntxt) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Flutter',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const Positioned(
                top: -50,
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 50,
                  child: FlutterLogo(
                    size: 70,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
