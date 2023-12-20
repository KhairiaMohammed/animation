import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedFractionallySizedBoxWidget extends StatelessWidget {
  final animatedFractionallySizedBoxController=Get.put(AnimatedFractionallySizedBoxController());
  AnimatedFractionallySizedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedFractionallySizedBoxController>(
      builder: (_) {
        return GestureDetector(
          onTap: () {
            animatedFractionallySizedBoxController.updateSelected();
          },
          child: Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: ColoredBox(
                color: Colors.red,
                child: AnimatedFractionallySizedBox(
                  widthFactor: animatedFractionallySizedBoxController.selected ? 0.25 : 0.75,
                  heightFactor: animatedFractionallySizedBoxController.selected ? 0.75 : 0.25,
                  alignment: animatedFractionallySizedBoxController.selected ? Alignment.topLeft : Alignment.bottomRight,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: FlutterLogo(size: 75),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
