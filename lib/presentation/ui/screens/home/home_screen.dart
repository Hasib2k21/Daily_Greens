import 'package:daily_greens/presentation/ui/screens/home/product_details_screen.dart';
import 'package:daily_greens/presentation/ui/utils/assets_path.dart';
import 'package:daily_greens/presentation/ui/widget/home/search_text_field.dart';
import 'package:daily_greens/presentation/ui/widget/home/section_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/home/product.dart';
import '../../widget/home/home_banner_slider.dart';
import '../../widget/home/horizontal_item_list_view.dart';
import '../../widget/home/horizontal_product_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    SvgPicture.asset(
                      AssetsPath.appLogo,
                      height: 30,
                    ),
                    const SizedBox(height: 8),
                    const Wrap(
                      spacing: 5,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.location_on),
                        Text('Dhaka,'),
                        Text('Uttara')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SearchTextField(textEditingController: TextEditingController()),
              const SizedBox(height: 12),
              const HomeBannerSlider(),
              const SizedBox(height: 8),
              SectionHeader(title: "Exclusive Offer", onTap: () {
              }),
              const SizedBox(height: 8),
              HorizontalProductListView(products: exclusiveOfferProducts),
              const SizedBox(height: 12),
              SectionHeader(title: "Best Selling", onTap: () {}),
              const SizedBox(height: 8),
              HorizontalProductListView(products: bestSellingProducts),
              const SizedBox(height: 12),
              SectionHeader(title: "Groceries", onTap: () {}),
              const SizedBox(height: 8),
              HorizontalItemListView(products: groceriesItem),
              const SizedBox(height: 12),
              HorizontalProductListView(products: groceriesProducts),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
