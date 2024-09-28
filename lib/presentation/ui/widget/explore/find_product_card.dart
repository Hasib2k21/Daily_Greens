import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/explore/releted_products_screen.dart';
import '../../utils/home/product.dart';

class FindProductCard extends StatelessWidget {
  final Product product;
  final Color bgColor;

  const FindProductCard({super.key, required this.product, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the RelatedProductsScreen and pass the selected category
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RelatedProductsScreen(category: product.category),
          ),
        );
      },
      child: Container(
        width: 180,
        height: 240,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFE2E2E2), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Container(
                width: 160,
                height: 110,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                ),
                child: Image.asset(
                  product.img,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  product.name,
                  style: const TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
