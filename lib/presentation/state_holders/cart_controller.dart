import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ui/utils/home/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs; // Reactive list
  var quantity = <Product, int>{}.obs; // Reactive map for product quantity
  var totalPrice = 0.0.obs;

  void addToCart(Product product, int qty) {
    if (quantity.containsKey(product)) {
      quantity[product] = quantity[product]! + qty;
    } else {
      quantity[product] = qty;
      cartItems.add(product); // Add the product to cartItems reactively
    }
    updateTotalPrice();
  }

  void removeFromCart(Product product) {
    // Check if the product exists in the cart
    if (quantity[product] != null && quantity[product]! > 0) {
      quantity[product] = quantity[product]! - 1; // Decrement quantity
      // No need to delete the product; just keep it in the cart with quantity 0
      updateTotalPrice(); // Update total price after removing
    }
    update(); // Ensure GetX updates the UI
  }

  void deleteProduct(Product product) {
    cartItems.remove(product); // Remove from cartItems
    quantity.remove(product); // Also remove from quantity mapping
    updateTotalPrice(); // Update total price
    update(); // Update the state
  }

  void updateTotalPrice() {
    double total = 0.0;
    for (var product in cartItems) {
      total += product.productPrice * (quantity[product] ?? 0);
    }
    totalPrice.value = total; // Update the total price reactively
  }
}
