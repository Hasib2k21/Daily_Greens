import 'package:flutter/material.dart';
import '../../utils/home/product.dart';

class ItemCard extends StatelessWidget {
  final Item product;
  

  const ItemCard({super.key, required this.product, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFE2E2E2), width: 1),
          //color: Color(0xFFFEF1E4)
          color: Color(0xFFE5F3EA)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image of the product
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                ),
                child: Image.asset(
                  product.img,
                  fit: BoxFit.scaleDown,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error), // In case of image error
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                product.name,
                style: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
