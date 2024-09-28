import 'package:daily_greens/presentation/ui/widget/home/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../state_holders/bottom_navbar_controller.dart';
import '../../utils/home/product.dart';
import '../../widget/explore/product_grid_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value){
        backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Find Products',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,vertical: 20
              ),
              child: Column(
                children: [
                  SearchTextField(textEditingController: TextEditingController()),
                ],
              ),
            ),
            Expanded(
                child: ProductGridView(
              products: findProduct,
            )),
          ],
        ),
      ),
    );
  }
  void backToHome() {
    Get.find<BottomNavbarController>().backToHome();
  }
}
