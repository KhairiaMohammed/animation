import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AnimatedContainerWidget1 extends StatelessWidget {
  final animatedContainerController = Get.put(AnimatedContainerController());

  AnimatedContainerWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedContainerController>(builder: (context) {
      return GestureDetector(
        onTap: () {
          animatedContainerController.updateAnimated();
        },
        child: Center(
          child: AnimatedContainer(
            width: animatedContainerController.selected ? 400 : 250,
            height: animatedContainerController.selected ? 200 :100,
            color:
                animatedContainerController.selected ? blackColor : mainColor,
            alignment: animatedContainerController.selected
                ? AlignmentDirectional.center: AlignmentDirectional.center ,

            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('The Riyadh Province'),
                ),
                animatedContainerController.selected
                    ? const Text('is a province of Saudi Arabia, located in the geographic center of the country and the center of the Arabian Peninsula.')
                    : const Text(''),
              ],
            ),
          ),
        ),
      );
    });
  }
}
