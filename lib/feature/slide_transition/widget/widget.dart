import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class SlideTransitionWidget extends StatelessWidget {
  final slideTransitionController = Get.put(SlideTransitionController());
  SlideTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return  Center(
  child:  SlideTransition(
    position: slideTransitionController.offsetAnimation,
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: FlutterLogo(size: 150.0),
    ),
  ),
);
  }
}

