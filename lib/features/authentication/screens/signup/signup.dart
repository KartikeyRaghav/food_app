import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_app/common/widgets/form_divider.dart';
import 'package:food_app/common/widgets/social_button.dart';
import 'package:food_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FATexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: FASizes.spaceBtwSections),
              SignUpForm(dark: dark),
              FAFormDivider(
                dark: dark,
                text: FATexts.orSignUpWith.capitalize!,
              ),
              SizedBox(height: FASizes.spaceBtwSections),
              FASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
