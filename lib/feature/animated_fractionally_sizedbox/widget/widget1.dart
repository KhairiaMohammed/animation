import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedFractionallySizedBoxWidget1 extends StatelessWidget {
  final animatedFractionallySizedBoxController = Get.put(AnimatedFractionallySizedBoxController());

  AnimatedFractionallySizedBoxWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedFractionallySizedBoxController>(builder: (_) {
      return Column(
        children: [
          SizedBox()
        ],
      );
    });
  }
}
