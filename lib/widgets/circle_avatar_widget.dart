import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CircleAvatar(
          // foregroundImage: NetworkImage(
          // // child are not display over the foregroundImage
          //   'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          // ),
          backgroundImage: NetworkImage(
            // child are display over the backgroundImage
            'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          ),
          maxRadius: 90,
          minRadius: 50,
          // radius: 90,
          backgroundColor: Colors.green, // image background color
          foregroundColor: Colors.black, // child background color
          child: Text(
            'CircleAvatar, NetworkImage',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        CircleAvatar(
          // foregroundImage: NetworkImage(
          // // child are not display over the foregroundImage
          //   'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          // ),
          // backgroundImage: NetworkImage(
          //   // child are display over the backgroundImage
          //   'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          // ),
          maxRadius: 90,
          minRadius: 50,
          // radius: 90,
          backgroundColor: Colors.green, // image background color
          foregroundColor: Colors.black, // child background color
          child: Text(
            'CircleAvatar, NetworkImage',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        CircleAvatar(
          foregroundImage: NetworkImage(
            //child are not display over the foregroundImage
            'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          ),
          // backgroundImage: NetworkImage(
          //   // child are display over the backgroundImage
          //   'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          // ),
          maxRadius: 90,
          minRadius: 50,
          // radius: 90,
          backgroundColor: Colors.green, // image background color
          foregroundColor: Colors.black, // child background color
          child: Text(
            'CircleAvatar, NetworkImage',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
