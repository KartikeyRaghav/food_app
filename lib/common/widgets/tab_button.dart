import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';


class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final bool isSelected;
  const TabButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 15,
            color: isSelected ? FAColors.primary : FAColors.textSecondary,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? FAColors.primary : FAColors.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
