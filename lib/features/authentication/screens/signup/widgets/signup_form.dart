import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:food_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/sizes.dart';
import 'package:food_app/utils/constants/text_strings.dart';
import 'package:food_app/utils/validators/validation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: controller.firstName,
                  validator: (value) =>
                      FAValidator.validateEmptyText('First Name', value),
                  decoration: InputDecoration(
                    labelText: FATexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: FASizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: controller.lastName,
                  validator: (value) =>
                      FAValidator.validateEmptyText('Last Name', value),
                  decoration: InputDecoration(
                    labelText: FATexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: FASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                FAValidator.validateEmptyText('Username', value),
            decoration: InputDecoration(
              labelText: FATexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: FASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => FAValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: FATexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: FASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => FAValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: FATexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: FASizes.spaceBtwInputFields),
          Obx(
            () => TextFormField(
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              validator: (value) => FAValidator.validatePassword(value),
              decoration: InputDecoration(
                labelText: FATexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),
          SizedBox(height: FASizes.spaceBtwSections),
          Row(
            children: [
              SizedBox(
                child: Obx(
                  () => Checkbox(
                      value: controller.privacyPolicy.value,
                      onChanged: (value) => controller.privacyPolicy.value =
                          !controller.privacyPolicy.value),
                ),
              ),
              SizedBox(width: FASizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${FATexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        FATexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? FAColors.white
                                  : FAColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? FAColors.white
                                  : FAColors.primary,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${FATexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        FATexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? FAColors.white
                                  : FAColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? FAColors.white
                                  : FAColors.primary,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: FASizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: Text(FATexts.createAccount),
            ),
          ),
          SizedBox(height: FASizes.spaceBtwSections),
        ],
      ),
    );
  }
}
