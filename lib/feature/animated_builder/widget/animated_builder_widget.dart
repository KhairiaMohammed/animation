import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../controller/animated_builder_controller.dart';

class AnimatedBuilderWidget extends StatelessWidget {
  final animatedBuilderController = Get.put(AnimatedBuilderController());
  AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: AnimatedBuilder(
          animation: animatedBuilderController.controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: mainColor,
            child: const Center(
              child: Text('Whee!'),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: animatedBuilderController.controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
