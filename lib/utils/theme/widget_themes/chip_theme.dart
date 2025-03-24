import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class FAChipTheme {
  FAChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: FAColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: FAColors.black),
    selectedColor: FAColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: FAColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: FAColors.darkerGrey,
    labelStyle: TextStyle(color: FAColors.white),
    selectedColor: FAColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: FAColors.white,
  );
}
