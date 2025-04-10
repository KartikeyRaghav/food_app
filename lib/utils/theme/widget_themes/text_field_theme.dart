import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class FATextFormFieldTheme {
  FATextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: FAColors.darkGrey,
    suffixIconColor: FAColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: FASizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: FASizes.fontSizeMd, color: FAColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: FASizes.fontSizeSm, color: FAColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: FAColors.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.darkGrey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: FAColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: FAColors.darkGrey,
    suffixIconColor: FAColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: FASizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: FASizes.fontSizeMd, color: FAColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: FASizes.fontSizeSm, color: FAColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: FAColors.white.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: FAColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(FASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: FAColors.warning),
    ),
  );
}
