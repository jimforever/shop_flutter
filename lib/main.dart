import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/providers/cart.dart';
import 'package:shop_flutter/providers/order.dart';
import 'package:shop_flutter/providers/products.dart';
import 'package:shop_flutter/screens/cart_screen.dart';
import 'package:shop_flutter/screens/orders_screen.dart';
import 'package:shop_flutter/screens/product_detail_screen.dart';
import 'package:shop_flutter/screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
        ChangeNotifierProvider(create: (_) => Cart()),
        ChangeNotifierProvider(create: (_) => Orders())
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.purple, accentColor: Colors.deepOrange),
        home: const ProductsOVerviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.rounteName:(ctx) => const OrdersScreen()
        },
      ),
    );
  }
}
