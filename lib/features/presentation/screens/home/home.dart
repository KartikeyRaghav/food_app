import 'package:flutter/material.dart';
import 'package:food_app/common/styles/spacing_styles.dart';
import 'package:food_app/features/presentation/controllers/homepage_controller.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/theme/widget_themes/search_bar_field_theme.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            SliverAppBar(
              pinned: false,
              expandedHeight: 40,
              flexibleSpace: Container(color: controller.appBarColor(context)),
              title: Text(
                FATexts.appName,
                style: TextStyle(color: FAColors.white, fontSize: 32),
              ),
              centerTitle: true,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: ReactiveSearchHeader(),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  LottieBuilder.asset("assets/images/home/homepage 1.json"),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text('Item $index'));
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class ReactiveSearchHeader extends SliverPersistentHeaderDelegate {
  final controller = Get.find<HomeController>();

  @override
  double get minExtent => 100;
  @override
  double get maxExtent => 100;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Obx(() {
      final color = controller.appBarColor(context);

      return Container(
        height: FASizes.containerHeight,
        width: double.infinity,
        color: color,
        child: Padding(
          padding: FASpacingStyle.containerPadding,
          child: TextFormField(
            decoration: FASearchBarFieldTheme.getInputDecoration(
              hintText: "Search...",
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      );
    });
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
