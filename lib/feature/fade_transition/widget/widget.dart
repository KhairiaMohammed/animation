import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class FadeTransitionWidget extends StatelessWidget {
  final fadeTransitionController=Get.put(FadeTransitionController());
  FadeTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FadeTransitionController>(
      builder: (_) {
        return ColoredBox(
          color: Colors.white,
          child: FadeTransition(
            opacity: fadeTransitionController.animation,
            child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
          ),
        );
      }
    );
  }
}
