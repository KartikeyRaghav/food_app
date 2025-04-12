import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_app/common/widgets/success_screen.dart';
import 'package:food_app/features/authentication/screens/login/login.dart';
import 'package:food_app/utils/constants/image_strings.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FASizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(FAImages.deliveredEmailIllustration),
                width: FAHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: FASizes.spaceBtwSections),
              Text(
                FATexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: FASizes.spaceBtwItems),
              Text(
                'abc@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: FASizes.spaceBtwItems),
              Text(
                FATexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: FASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: FAImages.staticSuccessIllustration,
                      title: FATexts.yourAccountCreatedTitle,
                      subTitle: FATexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => LoginScreen()),
                    ),
                  ),
                  child: Text(FATexts.fContinue),
                ),
              ),
              SizedBox(height: FASizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(FATexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
