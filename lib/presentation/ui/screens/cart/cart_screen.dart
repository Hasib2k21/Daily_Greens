import 'package:daily_greens/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holders/bottom_navbar_controller.dart';
import '../../../state_holders/cart_controller.dart';
import '../../utils/home/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return PopScope(
      canPop: false,
      onPopInvoked: (value){
        backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('My Cart')),
        ),
        body: Obx(() {
          if (cartController.cartItems.isEmpty) {
            return const Center(child: Text('Your cart is empty'));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = cartController.cartItems[index];
                    final int qty = cartController.quantity[product] ?? 0;

                    return Card(
                      color: Colors.grey.shade100,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            // Product Image
                            Image.asset(
                              product.img,
                              height: 80,
                              width: 70,
                              fit: BoxFit.scaleDown,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildProductHeader(product, cartController),
                                  _buildProductDetails(product),
                                  _buildQuantityControls(
                                      product, qty, cartController),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              _buildTotalPriceButton(cartController),
              const SizedBox(height: 12),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildProductHeader(Product product, CartController cartController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Product Name
        Text(
          product.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        // Delete Product Button
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            cartController.deleteProduct(product); // Always delete product
          },
        ),
      ],
    );
  }

  Widget _buildProductDetails(Product product) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${product.quantity} kg, Price'),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildQuantityControls(
      Product product, int qty, CartController cartController) {
    return Row(
      children: [
        // Circular Container for the Remove Button
        _buildCircularIconButton(
          Icons.remove,
          (cartController.quantity[product] ?? 0) >
                  1 // Enable if qty is greater than 1
              ? () => cartController.removeFromCart(product)
              : null, // Disable if qty is 1
        ),
        const SizedBox(width: 8),
        // Quantity Text
        Obx(() => Text(
              '${cartController.quantity[product] ?? 0}', // Display quantity
              style: const TextStyle(fontSize: 16),
            )),
        const SizedBox(width: 8),
        // Circular Container for the Add Button
        _buildCircularIconButton(
          Icons.add,
          () => cartController.addToCart(product, 1),
          color: AppColors.themeColor,
        ),
        Expanded(child: Container()),
        // Product Price at the End
        Obx(() => Text(
              '\$${(product.productPrice * (cartController.quantity[product] ?? 0)).toStringAsFixed(2)}',
              // Calculate total price
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  Widget _buildCircularIconButton(IconData icon, VoidCallback? onPressed,
      {Color? color}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(icon, color: color),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildTotalPriceButton(CartController cartController) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed functionality, like navigating to the checkout screen
        },
        child: Obx(() => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Go to Checkout',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Total: \$${cartController.totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavbarController>().backToHome();
  }
}
