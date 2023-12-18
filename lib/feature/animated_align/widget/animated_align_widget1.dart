import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/app_colors.dart';
import '../controller/animated_align_controller.dart';

class AnimatedAlignWidget1 extends StatelessWidget {
  final animatedAlignController = Get.put(AnimatedAlignController());

  AnimatedAlignWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedAlignController>(builder: (_) {
      return Container(
        padding: const EdgeInsets.only(top: 50,bottom: 50),
        height: 800,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_animated_align.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: animatedAlignController.alignmentBird,
                curve: Curves.easeInOutBack,
                duration: const Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/bired.png',
                  height: 150,
                  width: 150,
                ),
              ),
              AnimatedAlign(
                alignment: animatedAlignController.alignmentButterfly,
                curve: Curves.easeInCirc,
                duration: const Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/butterfly.png',
                  height: 75,
                  width: 75,
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: blackColor),
                  onPressed: () => animatedAlignController.changeAlignment(),
                  child: const Text('START'),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
