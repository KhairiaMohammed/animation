import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedRotationTransitionWidget extends StatelessWidget {
  final rotationTransitionController = Get.put(RotationTransitionController());
  AnimatedRotationTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return  SizedBox(
  height: 600,
  width: 300,
  child:   RotationTransition(
    turns: rotationTransitionController.animation,
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: FlutterLogo(size: 150.0),
    ),
  ),
);
  }
}

