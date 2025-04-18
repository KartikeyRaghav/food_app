import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/controllers/homepage_controller.dart';
import 'package:food_app/features/presentation/screens/home/widgets/homepage_animation.dart';
import 'package:food_app/features/presentation/screens/home/widgets/horizontal_list.dart';
import 'package:food_app/features/presentation/screens/home/widgets/nearby_restaurants.dart';
import 'package:food_app/features/presentation/screens/home/widgets/quick_dish.dart';
import 'package:food_app/features/presentation/screens/home/widgets/search_field.dart';
import 'package:food_app/features/presentation/screens/home/widgets/sliver_appbar.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);
    List<String> tabName = [
      "sort",
      "Fast Delivery",
      "Rating 4.0+",
      "New Arrivals",
      "Pure Veg",
      "Cuisines",
      "More",
    ];
    return Scaffold(
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          CustomAppBar(controller: controller),
          SliverPersistentHeader(
            pinned: true,
            delegate: ReactiveSearchHeader(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: FittedBox(fit: BoxFit.fill, child: LottieAnimation()),
                ),
                SizedBox(height: FASizes.spaceBtwItems),
                SizedBox(
                  height: 50,
                  child: HorizontalList(tabName: tabName, dark: dark),
                ),
                SizedBox(height: FASizes.spaceBtwItems),
                QuickDIsh(),
                SizedBox(height: FASizes.spaceBtwItems),
                Center(
                  child: Text(
                    "AVAILABLE DISHES",
                    style: TextStyle(color: FAColors.darkGrey),
                  ),
                ),
                SizedBox(height: FASizes.spaceBtwItems),
                NearbyRestaurants(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReactiveSearchHeader extends SliverPersistentHeaderDelegate {
  final controller = Get.find<HomeController>();

  @override
  double get minExtent => 90;
  @override
  double get maxExtent => 90;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Obx(() {
      final color = controller.appBarColor(context);

      return Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
        ),
        child: Container(
          height: FASizes.containerHeight,
          color: color,
          child: Align(alignment: Alignment.centerLeft, child: SearchField()),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
