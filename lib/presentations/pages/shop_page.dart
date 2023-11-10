import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecommerce/presentations/widgets/product_tile.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';
import '../widgets/custom_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access product in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Shop Page"),
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const CustomDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const Gap(25),
          // Shop subtitle
          Center(
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),

          // Product list

          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                // get each individual product from shop
                final product = products[index];

                // return as a product tile UI
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
