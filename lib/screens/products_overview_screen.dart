import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductsOVerviewScreen extends StatelessWidget {
  ProductsOVerviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: ProductsGrid(),
    );
  }
}
