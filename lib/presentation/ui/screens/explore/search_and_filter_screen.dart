import 'package:daily_greens/presentation/ui/screens/explore/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../utils/home/product.dart';
import '../../widget/home/search_text_field.dart';
import '../../widget/product_card.dart';


class SearchAndFilterScreen extends StatefulWidget {
  const SearchAndFilterScreen({super.key});

  @override
  State<SearchAndFilterScreen> createState() => _SearchAndFilterScreenState();
}

class _SearchAndFilterScreenState extends State<SearchAndFilterScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose(); // Dispose of controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all( 8.0),
        child: Column(
          children: [
            const SizedBox(height: 50), // Adjust the vertical spacing as needed
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SearchTextField(
                        textEditingController: _searchController),
                  ),
                  IconButton(
                    icon: const Icon(Icons.tune),
                    onPressed: () {
                      Get.to(()=>FilterScreen());
                    },
                    tooltip: 'Filter options', // Tooltip for accessibility
                  ),
                ],
              ),
            ),
            // Spacing between search bar and grid
            Expanded(
              child: ProductGridView(products: bestSellingProducts),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  final List<Product> products;

  const ProductGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 10,
        crossAxisSpacing: 0.1, // Adjust the aspect ratio of the items
      ),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },

    );
  }
}
