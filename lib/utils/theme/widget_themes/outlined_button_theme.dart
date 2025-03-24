import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class FAOutlinedButtonTheme {
  FAOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: FAColors.dark,
      side: const BorderSide(color: FAColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: FAColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: FASizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FASizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: FAColors.light,
      side: const BorderSide(color: FAColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: FAColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: FASizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(FASizes.buttonRadius)),
    ),
  );
}
