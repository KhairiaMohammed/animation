import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedListStateWidget extends StatelessWidget {
  final animatedListStateController=Get.put(AnimatedListStateController());
   AnimatedListStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedListStateController>(
      builder: (_) {
        return Container();
      }
    );
  }
}
