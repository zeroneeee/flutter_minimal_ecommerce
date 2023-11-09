import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecommerce/presentations/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const Gap(25),

            // title
            const Text(
              "Minimal Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const Gap(10),

            //subtitle
            Text(
              "Premium Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const Gap(25),

            // button
            CustomButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
