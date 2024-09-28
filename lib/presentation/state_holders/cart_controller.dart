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
    // Check if the quantity is greater than 1 before decrementing
    if (quantity[product] != null && quantity[product]! > 1) {
      quantity[product] = quantity[product]! - 1; // Decrement quantity
    }
    // Do not remove the product, even if the quantity is 1
    updateTotalPrice(); // Update total price after decrementing
    update(); // Ensure GetX updates the UI
  }

  void deleteProduct(Product product) {
    cartItems.remove(product); // Explicit removal by the user
    quantity.remove(product); // Remove from the quantity mapping as well
    updateTotalPrice(); // Update the total price
    update(); // Ensure the state is updated
  }

  void updateTotalPrice() {
    double total = 0.0;
    for (var product in cartItems) {
      total += product.productPrice * (quantity[product] ?? 0);
    }
    totalPrice.value = total; // Update the total price reactively
  }
}
