import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = FAHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? FAColors.black : Colors.white,
          indicatorColor:
              dark
                  ? FAColors.white.withValues(alpha: 0.1)
                  : FAColors.black.withValues(alpha: 0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.bag_2), label: 'Offers'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            NavigationDestination(icon: Icon(Iconsax.more_square4), label: 'More'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.green),
  ];
}
