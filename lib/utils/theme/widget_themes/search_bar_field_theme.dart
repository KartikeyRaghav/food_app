import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';

class FASearchBarFieldTheme {
  FASearchBarFieldTheme._();

  static InputDecoration getInputDecoration({
    String? hintText,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      contentPadding: const EdgeInsets.only(bottom: 2, left: 20),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 16, color: FAColors.darkGrey, fontWeight: FontWeight.w500),
      suffixIcon: suffixIcon,
    );
  }
}
