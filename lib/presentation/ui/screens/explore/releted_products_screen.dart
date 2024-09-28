import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/home/product.dart';
import '../../widget/product_card.dart';

class RelatedProductsScreen extends StatelessWidget {
  final String category;

  const RelatedProductsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Filter products based on category
    List<Product> categoryProducts = [];

    if (category == 'Fresh Fruits & Vegetable') {
      categoryProducts = FreshFruitsVegetable;
    } else if (category == 'Cooking Oil & Ghee') {
      categoryProducts = CookingOilGhee;
    }else if (category == 'Meat & Fish') {
      categoryProducts = MeatFish;
    }else if (category == 'Bakery & Snacks') {
      categoryProducts = BakerySnacks;
    }else if (category == 'Dairy & Eggs') {
      categoryProducts = DairyEggs;
    }else if (category == 'Beverages') {
      categoryProducts = Beverages;
    }
    // Add other categories as needed

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(category)),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune), // Filter icon
            onPressed: () {

            },
          ),
        ],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 4,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) {
          Product product = categoryProducts[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}
