import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/login/signin.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(BuildContext context) {
    if (currentPageIndex.value == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SignIn();
          },
        ),
      );
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
