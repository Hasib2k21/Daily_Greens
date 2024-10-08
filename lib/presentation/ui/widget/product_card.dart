import 'package:daily_greens/presentation/ui/screens/home/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/cart_controller.dart';
import '../utils/home/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetailsScreen(product: widget.product));
      },
      child: Container(
        width: 180,
        height: 260,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFE2E2E2), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image of the product
            Center(
              child: Container(
                width: 160,
                height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                ),
                child: Image.asset(
                  widget.product.img,
                  fit: BoxFit.scaleDown,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error), // In case of image error
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '${widget.product.quantity}kg, Price',
                style: const TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.product.productPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: IconButton(
                      onPressed: () {
                        cartController.addToCart(widget.product, 1); // Always adding 1
                        Get.snackbar(
                          'Success',
                          '${widget.product.name} added to cart!',
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.grey,
                          colorText: Colors.white,
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
