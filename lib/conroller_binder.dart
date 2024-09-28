
import 'package:daily_greens/presentation/state_holders/bottom_navbar_controller.dart';
import 'package:daily_greens/presentation/state_holders/cart_controller.dart';
import 'package:get/get.dart';

class ControllerBinders extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>BottomNavbarController());

  }

}