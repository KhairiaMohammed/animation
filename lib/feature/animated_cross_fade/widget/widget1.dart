import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class AnimatedCrossFadeWidget1 extends StatelessWidget {
  final animatedCrossFadeController = Get.put(AnimatedCrossFadeController());
  AnimatedCrossFadeWidget1({Key? key}) : super(key: key);

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
                firstChild:  Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/person1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Second widget
                secondChild: Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/person2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                crossFadeState:
                animatedCrossFadeController.selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1)),
          ),
        );
      }
    );
  }
}
