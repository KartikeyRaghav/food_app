import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class MenuItemRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MenuItemRow({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              mObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mObj["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: FAColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
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
                            mObj["rate"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: FAColors.primary,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            mObj["type"],
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
                            mObj["food_type"],
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
                const SizedBox(height: 22),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
