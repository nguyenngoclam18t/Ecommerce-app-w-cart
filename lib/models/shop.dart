import 'package:ecommerce_app_w_cart/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  List<Product> _shop = [
    Product(
      name: 'T-shirt',
      price: '\$25.00',
      desc: 'Comfortable cotton T-shirt',
      imgPath: 'assets/images/tshirt.png',
    ),
    Product(
      name: 'Jeans',
      price: '\$40.00',
      desc: 'Stylish blue jeans',
      imgPath: 'assets/images/jeans.png',
    ),
    Product(
      name: 'Jacket',
      price: '\$60.00',
      desc: 'Warm winter jacket',
      imgPath: 'assets/images/jacket.png',
    ),
    Product(
      name: 'Sneakers',
      price: '\$70.00',
      desc: 'Comfortable running shoes',
      imgPath: 'assets/images/sneakers.png',
    ),
    Product(
      name: 'Hat',
      price: '\$15.00',
      desc: 'Stylish summer hat',
      imgPath: 'assets/images/hat.png',
    ),
    Product(
      name: 'Dress',
      price: '\$50.00',
      desc: 'Elegant evening dress',
      imgPath: 'assets/images/dress.png',
    ),
    Product(
      name: 'Shorts',
      price: '\$20.00',
      desc: 'Casual summer shorts',
      imgPath: 'assets/images/shorts.png',
    ),
    Product(
      name: 'Sweater',
      price: '\$35.00',
      desc: 'Cozy knitted sweater',
      imgPath: 'assets/images/sweater.png',
    ),
    Product(
      name: 'Socks',
      price: '\$10.00',
      desc: 'Warm woolen socks',
      imgPath: 'assets/images/socks.png',
    ),
    Product(
      name: 'Blazer',
      price: '\$55.00',
      desc: 'Formal business blazer',
      imgPath: 'assets/images/blazer.png',
    ),
  ];
  List<Product> _cart = [];

  List<Product> get shop => _shop;
  set shop(List<Product> value) {
    _shop = value;
  }

  List<Product> get cart => _cart;
  set cart(List<Product> value) {
    _cart = value;
  }

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
