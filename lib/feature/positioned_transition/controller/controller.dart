import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PositionedTransitionController extends GetxController  with GetSingleTickerProviderStateMixin {

  double smallLogo = 100;
  double bigLogo = 200;

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
