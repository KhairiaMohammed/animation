import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedSwitcherWidget extends StatelessWidget {
  final  animatedSwitcherController=Get.put( AnimatedSwitcherController());
  AnimatedSwitcherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedSwitcherController>(
      builder: (_) {
        return Container(
          height: 150,
          width: 390,
          color: mainColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  animatedSwitcherController.count.toString(),
                  key: ValueKey<int>(animatedSwitcherController.count),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
            animatedSwitcherController.updateCounter();
                },
              ),
            ],
          ),
        );
      }
    );
  }
}
