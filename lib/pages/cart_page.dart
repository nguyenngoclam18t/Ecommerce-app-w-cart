import 'package:ecommerce_app_w_cart/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carts = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Cart Page")),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: carts.isEmpty
                  ? Center(child: Text("bạn chưa thêm sản phẩm"))
                  : ListView.builder(
                      itemCount: carts.length,
                      itemBuilder: (context, index) {
                        final item = carts[index];
                        return Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(12)),
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: ListTile(
                            title: Text(item.name),
                            subtitle: Text(item.price),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {
                                Provider.of<Shop>(context, listen: false)
                                    .removeFromCart(item);
                              },
                            ),
                          ),
                        );
                      },
                    ))
        ],
      ),
    );
  }
}
