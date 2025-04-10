import 'package:flutter/material.dart';
import 'package:food_app/features/authentication/screens/login/signin.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';
import 'package:food_app/common/styles/spacing_style.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController controllerFirstName = TextEditingController();
  final TextEditingController controllerLastName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
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
              _firstNameField(context),
              const SizedBox(height: FASizes.spaceBtwInputFields),
              _lastNameField(context),
              const SizedBox(height: FASizes.spaceBtwInputFields),
              _emailField(context),
              const SizedBox(height: FASizes.spaceBtwInputFields),
              _passwordField(context),
              const SizedBox(height: FASizes.spaceBtwSections),
              _continueBtn(context),
              const SizedBox(height: FASizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerText(BuildContext context) {
    return Text(
      FATexts.signupTitle,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextFormField(
      controller: controllerFirstName,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: FATexts.firstName,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: FAColors.darkGrey),
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextFormField(
      controller: controllerLastName,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: FATexts.lastName,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: FAColors.darkGrey),
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextFormField(
      controller: controllerEmail,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: FATexts.email,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: FAColors.darkGrey),
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      controller: controllerPassword,
      style: Theme.of(context).textTheme.bodyLarge,
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
      child: ElevatedButton(
        onPressed: () {
          SignIn();
          // check if account is valid and this will go to sign in page or maybe more details
        },
        child: const Text(FATexts.tContinue),
      ),
    );
  }
}
