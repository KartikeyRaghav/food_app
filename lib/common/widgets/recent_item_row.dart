import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class RecentItemRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.rObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                rObj["image"].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rObj["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: FAColors.textWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        rObj["type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        " - ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: FAColors.textSecondary, fontSize: 11),
                      ),
                      Text(
                        rObj["food_type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Iconsax.star5,
                        size: 10,
                        fill: 1,
                        color: FAColors.primary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        rObj["rate"],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: FAColors.primary, fontSize: 11),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        "(${rObj["rating"]} Ratings)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
