import 'package:flutter/material.dart';
import 'package:food_app/features/authentication/screens/login/signin.dart';
import 'package:food_app/features/authentication/screens/login/signup.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/image_strings.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  FAImages.optionBackground,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: size.width * 0.5,
                  child: Image.asset(
                    FAImages.logoFit,
                    width: size.width * 0.5,
                    height: size.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: FASizes.defaultSpace,
                right: FASizes.defaultSpace,
                top: FASizes.md,
              ),
              child: Column(
                children: [
                  Text(
                    FATexts.appName,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),
                  ),
                  Text(
                    FATexts.optionDesc,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: FAColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: FASizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => SignIn()),
                      child: Text(
                        FATexts.signIn,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: FASizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => SignUp()),
                      child: Text(
                        FATexts.signUp,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
