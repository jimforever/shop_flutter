import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/widgets/product_item.dart';

import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("ProductsGrid build");
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    print("products is " + products[0].toString());
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, index) => ProductItem(products[index].id,
            products[index].title, products[index].imageUrl));
  }
}
