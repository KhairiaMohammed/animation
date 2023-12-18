import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedWidgetController extends GetxController with GetSingleTickerProviderStateMixin  {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
