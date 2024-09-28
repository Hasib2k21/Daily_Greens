import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holders/cart_controller.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return const Center(child: Text('Your cart is empty'));
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = cartController.cartItems[index];
                    final int qty = cartController.quantity[product] ?? 0;

                    return Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              product.img,
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove),
                                        onPressed: qty > 1
                                            ? () => cartController
                                                .removeFromCart(product)
                                            : null,
                                      ),
                                      Obx(() => Text(
                                            '${cartController.quantity[product]}',
                                            // Dynamically update the qty
                                            style:
                                                const TextStyle(fontSize: 16),
                                          )),
                                      IconButton(
                                        icon: const Icon(Icons.add),
                                        onPressed: () {
                                          cartController.addToCart(product, 1);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Obx(() => Text(
                                  '\$${(product.productPrice * cartController.quantity[product]!).toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(width: 16),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                cartController.deleteProduct(product);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                // Adding margin
                child: ElevatedButton(
                  onPressed: () {},
                  child: Obx(() => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Total: \$${cartController.totalPrice.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 12,
              )
            ],
          );
        }
      }),
    );
  }
}
