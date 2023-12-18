import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedPhysicalModelWidget1 extends StatelessWidget {
  final animatedPhysicalModelController =
      Get.put(AnimatedPhysicalModelController());

  AnimatedPhysicalModelWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedPhysicalModelController>(builder: (_) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              elevation:
                  animatedPhysicalModelController.isElevated ? 68.0 : 10.0,
              shape: BoxShape.circle,
              shadowColor: animatedPhysicalModelController.isElevated
                  ? mainColor
                  : Colors.transparent,
              color: Colors.transparent,
              child: animatedPhysicalModelController.isElevated
                  ? Image.asset('assets/images/lamp.png')
                  : Image.asset('assets/images/lamp1.png'),
            ),
            const SizedBox(height: 20), // Empty space between elements
            ElevatedButton(
              onPressed: animatedPhysicalModelController.toggleElevation,
              child: Text(animatedPhysicalModelController.isElevated
                  ? 'Close'
                  : 'Open'), // Button text
            ),
          ],
        ),
      );
    });
  }
}
