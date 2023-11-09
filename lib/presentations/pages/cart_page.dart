import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecommerce/presentations/widgets/custom_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      drawer: const CustomDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
