import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeTransitionController extends GetxController  with GetSingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
