import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final Color startColor = const Color(0xFF0f1c3d);
  final RxDouble scrollOffset = 0.0.obs;

  @override
  void onInit() {
    scrollController.addListener(_updateScroll);
    super.onInit();
  }

  void _updateScroll() {
    scrollOffset.value = scrollController.offset.clamp(0.0, 258);
  }

  Color appBarColor(BuildContext context) {
    final endColor = Theme.of(context).scaffoldBackgroundColor;
    final double t = (scrollOffset.value / 258).clamp(0.0, 1.0);
    return Color.lerp(startColor, endColor, t)!;
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
