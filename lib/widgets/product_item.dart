import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            print("helloWorld");
          },
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print("helloWorld");
          },
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
