import 'package:ecommerce_app_w_cart/models/shop.dart';
import 'package:ecommerce_app_w_cart/pages/cart_page.dart';
import 'package:ecommerce_app_w_cart/pages/intro_page.dart';
import 'package:ecommerce_app_w_cart/pages/shop_page.dart';
import 'package:ecommerce_app_w_cart/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      home: IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
