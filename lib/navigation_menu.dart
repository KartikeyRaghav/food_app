import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/screens/home/home_screen.dart';
import 'package:food_app/features/presentation/screens/menu/menu_screen.dart';
import 'package:food_app/features/presentation/screens/offer/offer_screen.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = FAHelperFunctions.isDarkMode(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedIndex.value = 2;
        },
        backgroundColor:
            controller.selectedIndex.value == 2
                ? FAColors.primary
                : FAColors.darkGrey,
        child: Icon(Iconsax.home),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: dark ? FAColors.black : Colors.white,
          indicatorColor:
              dark
                  ? FAColors.white.withValues(alpha: 0.1)
                  : FAColors.black.withValues(alpha: 0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.bag_2), label: 'Offers'),
            NavigationDestination(icon: SizedBox(width: 0), label: ''),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            NavigationDestination(
              icon: Icon(Iconsax.more_square4),
              label: 'More',
            ),
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
    MenuScreen(),
    OfferScreen(),
    HomeScreen(),
    Container(),
    Container(),
  ];
}
