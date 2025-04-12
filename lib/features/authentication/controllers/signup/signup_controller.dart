import 'package:flutter/material.dart';
import 'package:food_app/features/presentation/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:food_app/utils/constants/image_strings.dart';
import 'package:food_app/utils/helpers/network_manager.dart';
import 'package:food_app/utils/popups/full_screen_loader.dart';
import 'package:food_app/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      FAFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        FAImages.animalIcon,
      );

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!signupFormKey.currentState!.validate()) return;

      if (!privacyPolicy.value) {
        FALoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create an account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }
      Get.offAll(() => HomePage());

      // final user = UserModel
    } catch (e) {
      FALoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      FAFullScreenLoader.stopLoading();
    }
  }
}
