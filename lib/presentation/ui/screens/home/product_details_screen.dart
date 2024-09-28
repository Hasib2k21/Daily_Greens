import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../state_holders/cart_controller.dart';
import '../../utils/app_colors.dart';
import '../../utils/home/product.dart';
import '../../widget/home/product_detail.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    final quantity = 1.obs;

    return Scaffold(
      body: Column(
        children: [
          _buildProductImage(context),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const Icon(Icons.favorite_border_rounded),
                  ],
                ),
                const SizedBox(height: 8),
                Text('${product.quantity} kg, Price'),
                const SizedBox(height: 28),
                _buildQuantityAndPrice(quantity),
                const SizedBox(height: 25),
                const ProductDetails(),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    cartController.addToCart(product, quantity.value);
                    Get.snackbar(
                      'Success',
                      '${product.name} added to cart!',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.grey,
                      colorText: Colors.white,
                    );
                  },
                  child: const Text('Add To Basket'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_sharp),
              ),
              IconButton(
                onPressed: () {
                  // Implement save product logic here
                },
                icon: const Icon(Icons.save_alt_outlined),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: Image.asset(
              product.img,
              height: 180,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityAndPrice(RxInt quantity) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    if (quantity.value > 1) {
                      quantity.value--;
                    }
                  },
                  icon: const Icon(Icons.remove),
                ),
                Container(
                  height: 40,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${quantity.value}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    quantity.value++;
                  },
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.themeColor,
                  ),
                ),
              ],
            )),
        Obx(() => Text(
              '\$${(product.productPrice * quantity.value).toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
