import 'package:flutter/widgets.dart';
import 'package:flutter_minimal_ecommerce/presentations/models/product.dart';

class Shop extends ChangeNotifier {
  // product for sale
  final List<Product> _shop = [
    Product(
        name: "Product 1",
        price: 99.99,
        description:
            "Item description.. more description..Item description.. more description",
        imagePath: 'assets/watch-aluminum-midnight.png'),
    Product(
        name: "Product 2",
        price: 99.99,
        description: "Item description",
        imagePath: 'assets/watch-orgenge.png'),
    Product(
        name: "Product 3",
        price: 99.99,
        description: "Item description",
        imagePath: 'assets/watch-stainless-graphite.png'),
    Product(
        name: "Product 4",
        price: 99.99,
        description: "Item description",
        imagePath: 'assets/watch-stainless-gold.png'),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners(); // exten provider ChangeNotifier
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners(); // exten provider ChangeNotifier
  }
}
