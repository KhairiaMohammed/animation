import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../controller/animated_builder_controller.dart';

class AnimatedBuilderWidget1 extends StatelessWidget {
  final animatedBuilderController = Get.put(AnimatedBuilderController());
  AnimatedBuilderWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animatedBuilderController.controller,
        child: Container(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sunlight.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: animatedBuilderController.controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
