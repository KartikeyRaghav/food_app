import 'package:flutter/material.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/features/presentation/controllers/homepage_controller.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SliverAppBar(
        pinned: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_box, color: FAColors.white),
          ),
        ],
        expandedHeight: 40,
        flexibleSpace: Container(
          color: controller.appBarColor(context),
          child: Padding(
            padding: FASpacingStyle.titlePadding,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: FAColors.white),
                    Flexible(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: FAColors.textWhite,
                          fontSize: FASizes.fontSizeLg,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: FASpacingStyle.addressPadding,
                    child: Text(
                      "VSB Hostel, IIT Indore",
                      style: TextStyle(color: FAColors.textWhite),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
