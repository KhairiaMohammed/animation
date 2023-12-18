import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedDecoratedBoxController extends GetxController  with GetTickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        ),
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );

  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    controller1 =
    AnimationController(duration: const Duration(seconds: 5), vsync: this)
      ..repeat(reverse: true);
  }

  late AnimationController controller1;

  final DecorationTween decorationTween1 = DecorationTween(
      begin: BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(offset: Offset(0, 0), blurRadius: 30, spreadRadius: 0)
          ],
          border: Border.all(width: 10, color: Colors.orange)),
      end: BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(offset: Offset(20, 20), blurRadius: 30, spreadRadius: 0)
          ],
          border: Border.all(width: 50, color: Colors.red)));

}
