import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({
    super.key,
  });

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 110,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
            viewportFraction: 1,
          ),
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    image: const DecorationImage(
                      image: AssetImage(AssetsPath.banner),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 12,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, currentIndex, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      height: 12,
                      width: 12,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                          color: currentIndex == i
                              ? AppColors.themeColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey)),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
