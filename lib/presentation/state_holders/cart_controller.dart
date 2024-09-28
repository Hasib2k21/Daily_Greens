import 'package:get/get.dart';
import '../ui/utils/home/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  var quantity = <Product, int>{}.obs;

  // Add product to cart with a given quantity (default is 1)
  void addToCart(Product product, [int qty = 1]) {
    if (quantity.containsKey(product)) {
      quantity[product] = (quantity[product]! + qty);
    } else {
      cartItems.add(product);
      quantity[product] = qty;
    }
  }

  // Remove product from cart or decrement quantity
  void removeFromCart(Product product) {
    if (quantity.containsKey(product) && quantity[product]! > 1) {
      quantity[product] = (quantity[product]! - 1);
    } else {
      quantity.remove(product);
      cartItems.remove(product);
    }
  }

  // Delete a product completely from the cart
  void deleteProduct(Product product) {
    quantity.remove(product);
    cartItems.remove(product);
  }

  // Get total price
  double get totalPrice => cartItems.fold(0, (sum, item) {
    return sum + (item.productPrice * quantity[item]!);
  });
}