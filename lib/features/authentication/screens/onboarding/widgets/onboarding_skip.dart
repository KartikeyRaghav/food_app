import 'package:flutter/material.dart';
import 'package:food_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      top: FADeviceUtils.getAppBarHeight(),
      right: FASizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}