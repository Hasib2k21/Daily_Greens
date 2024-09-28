import 'package:flutter/material.dart';
import '../../utils/home/product.dart';
import 'find_product_card.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> products;
  final List<Color> bgColors = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.purple.shade100,
    Colors.orange.shade100,
    Colors.teal.shade100,
    Colors.pink.shade100,
  ];

  ProductGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 1,
          childAspectRatio: 0.9),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return FindProductCard(
          product: products[index],
          bgColor: bgColors[index % bgColors.length], // Assign a color
        );
      },
    );
  }
}
