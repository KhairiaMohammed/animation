import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedSizeWidget extends StatelessWidget {
  final animatedSizeController=Get.put(AnimatedSizeController());
  AnimatedSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedSizeController>(
      builder: (_) {
        return GestureDetector(
          onTap: () => animatedSizeController.updateSize(),
          child: ColoredBox(
            color: Colors.amberAccent,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: animatedSizeController.size),
            ),
          ),
        );
      }
    );
  }
}
