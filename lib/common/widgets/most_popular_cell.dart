import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class MostPopularCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mObj["image"].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              mObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: FAColors.textWhite,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: FAColors.textSecondary, fontSize: 12),
                ),

                Text(
                  " - ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: FAColors.textSecondary, fontSize: 12),
                ),

                Text(
                  mObj["food_type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: FAColors.textSecondary, fontSize: 12),
                ),

                const SizedBox(width: 8),
                Icon(Iconsax.star5, size: 10, fill: 1, color: FAColors.primary),
                const SizedBox(width: 4),
                Text(
                  mObj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: FAColors.primary, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
