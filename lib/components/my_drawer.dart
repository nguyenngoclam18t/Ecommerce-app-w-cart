import 'package:ecommerce_app_w_cart/components/my_listtile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 85),
                child: Icon(
                  Icons.shopping_bag_rounded,
                  size: 90,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyListtile(
                text: "Home",
                icon: Icons.home,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              MyListtile(
                text: "Cart",
                icon: Icons.add_shopping_cart,
                onTap: () {
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: MyListtile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamed(context, '/intro_page');
              },
            ),
          )
        ],
      ),
    );
  }
}
