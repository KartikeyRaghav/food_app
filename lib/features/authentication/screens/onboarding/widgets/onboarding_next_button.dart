import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: FASizes.defaultSpace,
      bottom: FADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(context),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(), backgroundColor: FAColors.primary),
        child: Icon(
          Iconsax.arrow_right_3,
          color: FAColors.white,
        ),
      ),
    );
  }
}
