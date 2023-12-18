import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedOpacityWidget extends StatelessWidget {
  final animatedOpacityController=Get.put(AnimatedOpacityController());
  AnimatedOpacityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedOpacityController>(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: animatedOpacityController.opacityLevel,
              duration: const Duration(seconds: 3),
              child: const FlutterLogo(),
            ),
            ElevatedButton(
              onPressed: animatedOpacityController.changeOpacity,
              child: const Text('Fade Logo'),
            ),
          ],
        );
      }
    );
  }
}
