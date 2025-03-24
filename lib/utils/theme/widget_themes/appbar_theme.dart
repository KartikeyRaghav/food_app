import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class FAAppBarTheme{
  FAAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FAColors.black, size: FASizes.iconMd),
    actionsIconTheme: IconThemeData(color: FAColors.black, size: FASizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: FAColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FAColors.black, size: FASizes.iconMd),
    actionsIconTheme: IconThemeData(color: FAColors.white, size: FASizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: FAColors.white),
  );
}