import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class SizeTransitionWidget extends StatelessWidget {
  final sizeTransitionController = Get.put(SizeTransitionController());
  SizeTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return  Center(
  child:  SizeTransition(
    sizeFactor: sizeTransitionController.animation,
    axis: Axis.horizontal,
    axisAlignment: -1,
    child: const Center(
      child: FlutterLogo(size: 200.0),
    ),
  ),
);
  }
}

