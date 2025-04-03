import 'package:flutter/widgets.dart';
import 'package:food_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/device/device_utility.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: FADeviceUtils.getBottomNavigationBarHeight() + 25,
      left: FASizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? FAColors.light : FAColors.dark,
          dotHeight: 6,
        ),
        count: 3,
      ),
    );
  }
}
