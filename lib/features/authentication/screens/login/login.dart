import 'package:flutter/material.dart';
import 'package:food_app/common/styles/spacing_styles.dart';
import 'package:food_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:get/get.dart';
import 'package:food_app/common/widgets/form_divider.dart';
import 'package:food_app/common/widgets/social_button.dart';
import 'package:food_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              FALoginHeader(),
              FALoginForm(),
              FAFormDivider(
                dark: dark,
                text: FATexts.orSignInWith.capitalize!,
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
