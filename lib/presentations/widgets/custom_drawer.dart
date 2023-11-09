import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header: logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const Gap(25),

              // cart title
              CustomListTitle(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              // cart title
              CustomListTitle(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  // pop drawer first
                  onTap: () {
                    Navigator.pop(context);

                    // go to cart page
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),

          // cart shop title
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomListTitle(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false),
            ),
          ),

          // exitshop title
        ],
      ),
    );
  }
}
