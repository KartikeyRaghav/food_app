import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/features/authentication/screens/login/enter_password.dart';
import 'package:food_app/features/authentication/screens/login/signup.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController controllerEmail = TextEditingController();

  @override
  void dispose() {
    controllerEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: FASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signinText(),
              const SizedBox(height: FASizes.spaceBtwSections),
              _emailField(context, dark),
              const SizedBox(height: FASizes.spaceBtwSections),
              _continueBtn(context),
              const SizedBox(height: FASizes.spaceBtwSections),
              _createAccount(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signinText() {
    return Text(
      FATexts.signIn,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  Widget _emailField(BuildContext context, bool dark) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyLarge,
      controller: controllerEmail,
      decoration: InputDecoration(
        hintText: FATexts.email,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: FAColors.darkGrey),
      ),
    );
  }

  Widget _continueBtn(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (controllerEmail.text.isEmpty) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(FATexts.email)));
            return;
          }
          Get.to(() => EnterPassword());
        },
        child: const Text(FATexts.tContinue),
      ),
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${FATexts.dontHaveAccount} ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: FATexts.createAccount,
            style: Theme.of(context).textTheme.bodyMedium,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(() => SignUp());
                  },
          ),
        ],
      ),
    );
  }
}
