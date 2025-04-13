import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantRow({
    super.key,
    required this.pObj,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pObj["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: FAColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
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
                        pObj["rate"],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: FAColors.primary, fontSize: 11),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "(${pObj["rating"]} Ratings)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        pObj["type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        " - ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        pObj["food_type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.textSecondary,
                          fontSize: 12,
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
