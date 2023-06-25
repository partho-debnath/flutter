import 'package:flutter/material.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: <Widget>[
          _buildGridTile(
            'Title',
            'https://images.unsplash.com/photo-1613539246066-78db6ec4ff0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=686&q=80',
            53.5,
          ),
          _buildGridTile(
            'This is Title',
            'https://images.unsplash.com/photo-1523528283115-9bf9b1699245?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
            50.6,
          ),
          _buildGridTile(
            'This is Title',
            'https://images.unsplash.com/photo-1523528283115-9bf9b1699245?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
            50.6,
          ),
        ],
      ),
    );
  }

  ClipRRect _buildGridTile(String title, String imageURL, double price) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: SizedBox(
        height: 170,
        width: 183,
        child: GridTile(
          header: Container(
            color: Colors.black54,
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
            scale: 1.5,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: Colors.red),
            ),
            // title: Text(title),
            subtitle: Text('\$${price.toStringAsFixed(2)}'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ),
      ),
    );
  }
}
