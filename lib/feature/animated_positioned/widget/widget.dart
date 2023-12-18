import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedPositionedWidget extends StatelessWidget {
  final animatedPositionedController=Get.put(AnimatedPositionedController());
  AnimatedPositionedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedPositionedController>(
      builder: (_) {
        return SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: animatedPositionedController.selected ? 200.0 : 50.0,
                height: animatedPositionedController.selected ? 50.0 : 200.0,
                top: animatedPositionedController.selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    animatedPositionedController.updateAnimatedPositioned();
                  },
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('Tap me')),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
