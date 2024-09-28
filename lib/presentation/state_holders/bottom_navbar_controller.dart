import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    // Ensure the index is within the valid range
    if (index >= 0) {
      _selectedIndex = index;
      update();
    }
  }

  void navigateToHome() {
    changeIndex(0); // Assuming home is at index 0
  }

  void navigateToCategory() {
    changeIndex(1); // Assuming categories is at index 1
  }

  void navigateToCart() {
    changeIndex(2); // Assuming cart is at index 2
  }
}
