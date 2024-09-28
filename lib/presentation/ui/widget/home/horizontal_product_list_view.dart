import 'package:flutter/material.dart';
import '../../utils/home/product.dart';
import '../product_card.dart';


class HorizontalProductListView extends StatelessWidget {
  final List<Product> products;

  const HorizontalProductListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}




