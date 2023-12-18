import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideTransitionController extends GetxController  with GetSingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
