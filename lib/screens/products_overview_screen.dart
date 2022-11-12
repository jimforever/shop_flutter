import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/widgets/badge.dart';

import '../providers/cart.dart';
import '../providers/products.dart';
import '../widgets/products_grid.dart';

enum FilterOptions { Favorites, All }

class ProductsOVerviewScreen extends StatefulWidget {
  const ProductsOVerviewScreen({super.key});

  @override
  State<ProductsOVerviewScreen> createState() => _ProductsOVerviewScreenState();
}

class _ProductsOVerviewScreenState extends State<ProductsOVerviewScreen> {
  var _showOnlyFacorites = false;
  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('MyShop'), actions: [
        PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFacorites = true;
                } else {
                  _showOnlyFacorites = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
                  const PopupMenuItem(
                    value: FilterOptions.Favorites,
                    child: Text('Only Favorites'),
                  ),
                  const PopupMenuItem(
                    value: FilterOptions.All,
                    child: Text('Show All'),
                  ),
                ]),
        Consumer<Cart>(
          builder: (_, cart, cd) => Badge(
            child: cd!,
            value: cart.itemCount.toString(),
          ),
          child: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        )
      ]),
      body: ProductsGrid(_showOnlyFacorites),
    );
  }
}
