import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AnimatedDefaultTextStyleWidget extends StatelessWidget {
  final animatedDefaultTextStyleController = Get.put(AnimatedDefaultTextStyleController());
   AnimatedDefaultTextStyleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AnimatedDefaultTextStyleController>(
      builder: (_) {
        return GestureDetector(
          onTap: (){
            animatedDefaultTextStyleController.updateAnimatedText();
          },
          child: SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: animatedDefaultTextStyleController.fontSize,
                color: animatedDefaultTextStyleController.color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
            ),
          ),
        );
      }
    );
  }
}
