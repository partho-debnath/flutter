import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            // horizontalTitleGap: 10,
            // selected: true,
            // tileColor: Colors.black, // this not working when selected is true
            // selectedColor: Colors.green,
            // // selectedTileColor: Colors.grey,
            // splashColor: Colors.purple,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   side: const BorderSide(
            //     color: Colors.red,
            //     width: 1,
            //   ),
            // ),
            // dense: true,
            // contentPadding:
            //     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            onTap: () {
              print('on Tap');
            },
            onLongPress: () {
              print('on Long Press');
            },
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            title: const Text('This Title.'),
            subtitle: const Text('This is subtitle.'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done_rounded,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            horizontalTitleGap: 10,
            selected: true,
            tileColor: Colors.black, // this not working when selected is true
            selectedColor: Colors.green,
            // selectedTileColor: Colors.grey,
            splashColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
            // dense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            onTap: () {
              print('on Tap');
            },
            onLongPress: () {
              print('on Long Press');
            },
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            title: const Text('This Title.'),
            subtitle: const Text('This is subtitle.'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done_rounded,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.grey.withOpacity(0.3),
            horizontalTitleGap: 50,
            selected: false,
            selectedColor: Colors.green,
            // selectedTileColor: Colors.grey,
            // splashColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
            // dense: true,
            // contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            onTap: () {
              print('on Tap');
            },
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            title: const Text('This Title.'),
            subtitle: const Text('This is subtitle.'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done_rounded,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
