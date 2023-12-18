import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class ScaleTransitionWidget extends StatelessWidget {
  final scaleTransitionController = Get.put(ScaleTransitionController());
  ScaleTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return  Center(
  child: ScaleTransition(
    scale: scaleTransitionController.animation,
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: FlutterLogo(size: 150.0),
    ),
  ),
);
  }
}

