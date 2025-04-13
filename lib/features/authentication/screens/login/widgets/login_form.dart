import 'package:flutter/material.dart';
import 'package:food_app/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:food_app/features/authentication/screens/signup/signup.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';

class FALoginForm extends StatelessWidget {
  const FALoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FASizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: FATexts.email,
              ),
            ),
            SizedBox(height: FASizes.spaceBtwInputFields),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: FATexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: FASizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(FATexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgotPasswordScreen()),
                  child: Text(FATexts.forgotPassword),
                ),
              ],
            ),
            SizedBox(height: FASizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: Text(FATexts.signIn),
              ),
            ),
            SizedBox(height: FASizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(SignUpScreen()),
                child: Text(FATexts.createAccount),
              ),
            ),
            SizedBox(height: FASizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
