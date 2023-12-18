import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/animated_align_controller.dart';

class AnimatedAlignWidget extends StatelessWidget {
  final animatedAlignController = Get.put(AnimatedAlignController());

  AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedAlignController>(builder: (_) {
      return Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 50),
        child: Center(
          child: GestureDetector(
            onTap: () {
              animatedAlignController.updateAnimatedAlign();
            },
            child: Container(
              width: 250.0,
              height: 100,
              color: Colors.grey,
              child: AnimatedAlign(
                alignment: animatedAlignController.selected
                    ? Alignment.topRight
                    : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
        ),
      );
    });
  }
}
