import 'package:ecommerce_app_w_cart/components/my_button.dart';
import 'package:ecommerce_app_w_cart/pages/shop_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_bag_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Minimal Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "Premium Quality Products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
                child: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/shop_page',
                    (route) => false,
                  );
                })
          ],
        ),
      ),
    );
  }
}
