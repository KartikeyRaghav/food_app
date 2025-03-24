import 'package:flutter/material.dart';
import 'package:food_app/utils/theme/widget_themes/appbar_theme.dart';
import 'package:food_app/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:food_app/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:food_app/utils/theme/widget_themes/chip_theme.dart';
import 'package:food_app/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:food_app/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:food_app/utils/theme/widget_themes/text_field_theme.dart';
import 'package:food_app/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class FAAppTheme {
  FAAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: FAColors.grey,
    brightness: Brightness.light,
    primaryColor: FAColors.primary,
    textTheme: FATextTheme.lightTextTheme,
    chipTheme: FAChipTheme.lightChipTheme,
    scaffoldBackgroundColor: FAColors.white,
    appBarTheme: FAAppBarTheme.lightAppBarTheme,
    checkboxTheme: FACheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FABottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FAElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FAOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FATextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: FAColors.grey,
    brightness: Brightness.dark,
    primaryColor: FAColors.primary,
    textTheme: FATextTheme.darkTextTheme,
    chipTheme: FAChipTheme.darkChipTheme,
    scaffoldBackgroundColor: FAColors.black,
    appBarTheme: FAAppBarTheme.darkAppBarTheme,
    checkboxTheme: FACheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: FABottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: FAElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FAOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FATextFormFieldTheme.darkInputDecorationTheme,
  );
}
