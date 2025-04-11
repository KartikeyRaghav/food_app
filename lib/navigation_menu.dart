import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/screens/home/home.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = FAHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode ? FAColors.black : FAColors.white,
          indicatorColor:
              darkMode ? FAColors.buttonPrimary : FAColors.borderSecondary,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.fastfood_outlined),
              label: "Food",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: "Account",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;
  final screens = [
    HomePage(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.green),
  ];
}
