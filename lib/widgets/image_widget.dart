import 'package:flutter/material.dart';

class MyImageWidgets extends StatelessWidget {
  const MyImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'images/rain-light.jpg',
            height: 150,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.image,
                size: 50,
              );
            },
          ),
        ),
        const CircleAvatar(
          // foregroundImage: NetworkImage(
          //   'https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_1280.jpg',
          // ),
          backgroundImage: NetworkImage(
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
        )
      ],
    );
  }
}
