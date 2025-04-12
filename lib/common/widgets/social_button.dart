import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/colors.dart';
import 'package:food_app/utils/constants/image_strings.dart';
import 'package:food_app/utils/constants/sizes.dart';

class FASocialButtons extends StatelessWidget {
  const FASocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FAColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: FASizes.iconMd,
              height: FASizes.iconMd,
              image: AssetImage(FAImages.google),
            ),
          ),
        ),
        SizedBox(width: FASizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FAColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: FASizes.iconMd,
              height: FASizes.iconMd,
              image: AssetImage(FAImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
