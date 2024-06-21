import 'package:ecommerce_app_w_cart/models/product.dart';
import 'package:flutter/material.dart';

class ProdutTile extends StatelessWidget {
  Product product;
  void Function()? onAddToCart;
  ProdutTile({super.key, required this.product, required this.onAddToCart});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Image.asset(product.imgPath),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(product.desc,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(product.price),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                    onPressed: onAddToCart,
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
