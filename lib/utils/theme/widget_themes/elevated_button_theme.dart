import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class FAElevatedButtonTheme {
  FAElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FAColors.light,
      backgroundColor: FAColors.primary,
      disabledForegroundColor: FAColors.darkGrey,
      disabledBackgroundColor: FAColors.buttonDisabled,
      side: const BorderSide(color: FAColors.primary),
      padding: const EdgeInsets.symmetric(vertical: FASizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: FAColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FASizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FAColors.light,
      backgroundColor: FAColors.primary,
      disabledForegroundColor: FAColors.darkGrey,
      disabledBackgroundColor: FAColors.darkerGrey,
      side: const BorderSide(color: FAColors.primary),
      padding: const EdgeInsets.symmetric(vertical: FASizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: FAColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FASizes.buttonRadius)),
    ),
  );
}
