import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/image_strings.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(FAImages.optionBackground)
          ],
        ),
      ),
    );
  }
}
