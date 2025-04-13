import 'package:flutter/material.dart';
import 'package:food_app/common/widgets/tab_button.dart';
import 'package:food_app/features/presentation/screens/home/home.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/utils/constants/colors.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    int selctTab = 2;
    PageStorageBucket storageBucket = PageStorageBucket();
    Widget selectPageView = HomeScreen();

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     controller.selectedIndex.value = 2;
      //   },
      //   backgroundColor:
      //       controller.selectedIndex.value == 2
      //           ? FAColors.primary
      //           : FAColors.darkGrey,
      //   child: Icon(Iconsax.home),
      // ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: Obx(
      //   () => NavigationBar(
      //     height: 80,
      //     elevation: 0,
      //     selectedIndex: controller.selectedIndex.value,
      //     onDestinationSelected: (index) {
      //       controller.selectedIndex.value = index;
      //       print(index);
      //     },
      //     backgroundColor: dark ? FAColors.black : Colors.white,
      //     indicatorColor:
      //         dark
      //             ? FAColors.white.withValues(alpha: 0.1)
      //             : FAColors.black.withValues(alpha: 0.1),
      //     destinations: [
      //       NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
      //       NavigationDestination(icon: Icon(Iconsax.bag_2), label: 'Offers'),
      //       NavigationDestination(icon: SizedBox(width: 24), label: ''),
      //       NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
      //       NavigationDestination(
      //         icon: Icon(Iconsax.more_square4),
      //         label: 'More',
      //       ),
      //     ],
      //   ),
      // ),
      // body: Obx(() => controller.screens[controller.selectedIndex.value]),
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selctTab != 2) {
              selctTab = 2;
              selectPageView = HomeScreen();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selctTab == 2 ? FAColors.primary : FAColors.darkGrey,
          child: Icon(Iconsax.home_2, size: 30),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: FAColors.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                title: "Menu",
                icon: Iconsax.shop,
                onTap: () {
                  if (selctTab != 0) {
                    selctTab = 0;
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 0,
              ),
              TabButton(
                title: "Offer",
                icon: Iconsax.bag_2,
                onTap: () {
                  if (selctTab != 1) {
                    selctTab = 1;
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 1,
              ),

              const SizedBox(width: 40, height: 40),

              TabButton(
                title: "Profile",
                icon: Iconsax.user,
                onTap: () {
                  if (selctTab != 3) {
                    selctTab = 3;
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 3,
              ),
              TabButton(
                title: "More",
                icon: Iconsax.more_square4,
                onTap: () {
                  if (selctTab != 4) {
                    selctTab = 4;
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                isSelected: selctTab == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
