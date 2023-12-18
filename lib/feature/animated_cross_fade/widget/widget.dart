import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AnimatedCrossFadeWidget extends StatelessWidget {
  final animatedCrossFadeController = Get.put(AnimatedCrossFadeController());
  AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<AnimatedCrossFadeController>(
      builder: (_) {
        return GestureDetector(
          onTap: (){
            animatedCrossFadeController.updateAnimated();
          },
          child: Center(
            child: AnimatedCrossFade(
              // First widget
                firstChild: Container(
                  height: 230,
                  width: 250,
                  color: Colors.blue,
                ),
                // Second widget
                secondChild: Container(
                  height: 250,
                  width: 230,
                  color: Colors.green,
                ),
                // Parameter to change between two
                // widgets on this basis of value of _bool
                crossFadeState:
                animatedCrossFadeController.selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                // Duration for crossFade animation.
                duration: const Duration(seconds: 1)),
          ),
        );
      }
    );
  }
}
