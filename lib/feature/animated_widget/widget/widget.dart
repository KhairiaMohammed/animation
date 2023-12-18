import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../controller/controller.dart';

class AnimatedWidgetWidget extends StatelessWidget {
  final animatedWidgetController=Get.put(AnimatedWidgetController());
  AnimatedWidgetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedWidgetController>(
      builder: (_) {
        return SpinningContainer(controller: animatedWidgetController.controller);
  }
    );}
}
class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
    );
  }
}
