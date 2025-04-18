import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  const LottieAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.network(
      "https://lottie.host/d8e4873d-bc4e-45b2-9c57-924a7f54e9e7/gi3NR6NsWd.json",
    );
  }
}
