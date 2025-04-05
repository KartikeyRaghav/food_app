import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/features/authentication/screens/login/enterpassword.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              const SizedBox(height: FASizes.xl),
              _emailField(context, dark),
              const SizedBox(height: FASizes.lg),
              _continueBtn(context),
              const SizedBox(height: FASizes.lg),
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
        ).textTheme.bodyLarge?.copyWith(color: FAColors.darkGrey),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EnterPassword();
              },
            ),
          );
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
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextSpan(
            text: FATexts.createAccount,
            style: Theme.of(context).textTheme.bodyLarge,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EnterPassword();
                        },
                      ),
                    );
                  },
          ),
        ],
      ),
    );
  }
}
