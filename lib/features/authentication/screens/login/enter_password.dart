import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/features/authentication/screens/login/forgot_password.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({super.key});

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  final TextEditingController controllerPassword = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final dark = FAHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: dark ? FAColors.light : FAColors.dark),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: FASpacingStyle.paddingWithoutAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerText(context),
              const SizedBox(height: FASizes.spaceBtwSections),
              _passwordField(context, dark),
              const SizedBox(height: FASizes.spaceBtwSections),
              _continueBtn(context),
              const SizedBox(height: FASizes.spaceBtwSections),
              _forgotPassword(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerText(BuildContext context) {
    return Text(
      FATexts.password,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  Widget _passwordField(BuildContext context, bool dark) {
    return TextFormField(
      obscureText: isObscure,
      style: Theme.of(context).textTheme.bodyLarge,
      controller: controllerPassword,
      decoration: InputDecoration(
        hintText: FATexts.password,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: FAColors.darkGrey),
        suffixIcon: IconButton(
          icon: Icon(
            isObscure ? Icons.visibility_off : Icons.visibility,
            color: FAColors.darkGrey,
          ),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
      ),
    );
  }

  Widget _continueBtn(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text(FATexts.signIn)),
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          TextSpan(text: '${FATexts.forgotPassword} '),
          TextSpan(
            text: ' ${FATexts.reset}',
            style: Theme.of(context).textTheme.bodyMedium,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ForgotPassword();
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
