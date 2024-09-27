import 'package:flutter/cupertino.dart';

import '../../utils/home/product.dart';
import 'item_card.dart';

class HorizontalItemListView extends StatelessWidget {
  final List<Item> products;

  const HorizontalItemListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ItemCard(product: products[index],);
        },
      ),
    );
  }
}