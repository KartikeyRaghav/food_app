import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FATexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: FASizes.spaceBtwItems),
              Text(
                FATexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: FASizes.spaceBtwSections * 2),
              TextFormField(
                decoration: InputDecoration(
                  labelText: FATexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              SizedBox(height: FASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => ResetPasswordScreen()),
                  child: Text(FATexts.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
