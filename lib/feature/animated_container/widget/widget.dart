import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final animatedContainerController = Get.put(AnimatedContainerController());

  AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedContainerController>(builder: (context) {
      return GestureDetector(
        onTap: () {
          animatedContainerController.updateAnimated();
        },
        child: Center(
          child: AnimatedContainer(
            width: animatedContainerController.selected ? 200.0 : 100.0,
            height: animatedContainerController.selected ? 100.0 : 200.0,
            color:
                animatedContainerController.selected ? blackColor: mainColor,
            alignment: animatedContainerController.selected
                ? Alignment.center
                : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn,
            child: Text('hi'),
          ),
        ),
      );
    });
  }
}
