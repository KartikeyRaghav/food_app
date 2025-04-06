import 'package:flutter/material.dart';
import 'package:food_app/common/styles/spacing_style.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/helpers/helper_functions.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController controllerEmail = TextEditingController();

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
              _emailField(context, dark),
              const SizedBox(height: FASizes.spaceBtwSections),
              _continueBtn(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerText(BuildContext context) {
    return Text(
      FATexts.forgotPassword,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  Widget _emailField(BuildContext context, bool dark) {
    return TextField(
      controller: controllerEmail,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: dark ? const Color(0xFFEAEEFA) : const Color(0xFF171717),
      ),
      decoration: InputDecoration(
        filled: dark,
        fillColor: const Color(0xFF212121),
        hintText: FATexts.recoveryMail,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: dark ? const Color(0xFF7A7A7A) : const Color(0xFF171717),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF3662CC)),
        ),
      ),
      onEditingComplete: () {
        setState(() {});
      },
    );
  }

  Widget _continueBtn(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
         
        },
        child: Text(FATexts.tContinue),
      ),
    );
  }
}
