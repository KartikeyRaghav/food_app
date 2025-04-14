import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  final double fontSize;
  const RoundButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 16,
    this.type = RoundButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border:
              type == RoundButtonType.bgPrimary
                  ? null
                  : Border.all(color: FAColors.primary, width: 1),
          color:
              type == RoundButtonType.bgPrimary
                  ? FAColors.primary
                  : FAColors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
            color:
                type == RoundButtonType.bgPrimary
                    ? FAColors.white
                    : FAColors.primary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
