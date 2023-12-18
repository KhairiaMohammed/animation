import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedDecoratedBoxTransitionWidget1 extends StatelessWidget {
  final animatedDecoratedBoxController=Get.put(AnimatedDecoratedBoxController());
  AnimatedDecoratedBoxTransitionWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedDecoratedBoxController>(
        init: AnimatedDecoratedBoxController(),
        builder: (_) {
        return DecoratedBoxTransition(
          decoration: animatedDecoratedBoxController.decorationTween1.animate(animatedDecoratedBoxController.controller1),
          child: const SizedBox(
            width: 250,
            height: 250,
          ),
        );
      }
    );
  }
}
