import 'package:daily_greens/presentation/ui/screens/account/account_screen.dart';
import 'package:daily_greens/presentation/ui/screens/cart/cart_screen.dart';
import 'package:daily_greens/presentation/ui/screens/explore/explore_screen.dart';
import 'package:daily_greens/presentation/ui/screens/favourite/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/bottom_navbar_controller.dart';
import 'home/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final BottomNavbarController _navbarController =
  Get.find<BottomNavbarController>();

  final List<Widget> _screen = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(builder: (_) {
      return Scaffold(
        body: _screen[_navbarController.selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              // Define the selected color for icon and label
              labelTextStyle: MaterialStateProperty.resolveWith(
                    (states) {
                  if (states.contains(MaterialState.selected)) {
                    return TextStyle(
                      color: Theme.of(context).primaryColor, // Selected label color
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    );
                  }
                  return const TextStyle(
                    color: Colors.grey, // Unselected label color
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  );
                },
              ),

              indicatorColor: Theme.of(context).primaryColor, // Indicator color for the selected tab
            ),
            child: NavigationBar(
              selectedIndex: _navbarController.selectedIndex,
              onDestinationSelected: _navbarController.changeIndex,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.shopping_basket_rounded), label: 'Shop'),
                NavigationDestination(
                    icon: Icon(Icons.travel_explore_sharp), label: 'Explore'),
                NavigationDestination(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                NavigationDestination(
                    icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
                NavigationDestination(
                    icon: Icon(Icons.person_outlined), label: 'Account'),
              ],
            ),
          ),
        ),
      );
    });
  }
}
