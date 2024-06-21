import 'package:ecommerce_app_w_cart/components/my_drawer.dart';
import 'package:ecommerce_app_w_cart/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/produt_tile.dart';
import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    void addItemToCart(Product product) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Thêm vào giỏ hàng"),
          content: Text("bạn có muốn thêm ${product.name} vào giỏ hàng không"),
          actions: [
            TextButton(
              onPressed: () {
                Provider.of<Shop>(context, listen: false).addToCart(product);
                Navigator.of(context).pop();
              },
              child: Text("Có", style: TextStyle(color: Colors.black)),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Không",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: Text("ShopPage")),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart_page');
                },
                icon: Icon(Icons.add_shopping_cart))
          ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "SHOP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "pick from a selected list of premium products",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  Product product = products[index];
                  return ProdutTile(
                    product: product,
                    onAddToCart: () {
                      addItemToCart(product);
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
                child: Text(
              "minimal x shop",
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ))
          ],
        ));
  }
}
