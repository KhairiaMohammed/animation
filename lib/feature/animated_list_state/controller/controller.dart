import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedListStateController extends GetxController {
  static AnimatedListStateController get find => Get.find();

  late AnimationController listAnimationController;
  // List<Message> messageList;

  @override
  void onInit() {
    super.onInit();
    listAnimationController = AnimationController(
        vsync: NavigatorState(), duration: const Duration(milliseconds: 500));
  }
}
