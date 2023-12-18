import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedDecoratedBoxTransitionWidget extends StatelessWidget {
  final animatedDecoratedBoxController=Get.put(AnimatedDecoratedBoxController());
  AnimatedDecoratedBoxTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedDecoratedBoxController>(
      init: AnimatedDecoratedBoxController(),
      builder: (_) {
        return ColoredBox(
          color: Colors.white,
          child: Center(
            child: DecoratedBoxTransition(
              decoration: animatedDecoratedBoxController.decorationTween.animate(animatedDecoratedBoxController.controller),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: const FlutterLogo(),
              ),
            ),
          ),
        );
      }
    );
  }
}
