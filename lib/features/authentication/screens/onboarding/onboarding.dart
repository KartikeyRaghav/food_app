import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:food_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:food_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:food_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:food_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:food_app/utils/constants/image_strings.dart';
import 'package:food_app/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                animation: FAImages.onBoarding1,
                title: FATexts.onBoardingTitle1,
                subtitle: FATexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                animation: FAImages.onBoarding2,
                title: FATexts.onBoardingTitle2,
                subtitle: FATexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                animation: FAImages.onBoarding3,
                title: FATexts.onBoardingTitle3,
                subtitle: FATexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
