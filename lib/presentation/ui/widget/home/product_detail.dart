import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Product Detail',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 35,
            )
          ],
        ),
        const SizedBox(height: 12),
        const Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
        const SizedBox(
            height: 12
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '''Nutrition's''',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              width: 50,
            ),
            const Text('100gr'),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 35,
            )
          ],
        ),
        const SizedBox(
            height: 12
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Review',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              width: 60,
            ),
            const Text('*****',
                style: TextStyle(color: Colors.orange, fontSize: 30)),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 35,
            )
          ],
        ),
      ],
    );
  }
}