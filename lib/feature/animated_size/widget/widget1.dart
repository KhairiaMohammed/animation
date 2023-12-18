import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedSizeWidget1 extends StatelessWidget {
  final animatedSizeController = Get.put(AnimatedSizeController());

  AnimatedSizeWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedSizeController>(builder: (_) {
      return Column(
        children: [
          GestureDetector(
              onTap: () => animatedSizeController.updateHeightWidth(),
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: animatedSizeController.height,
                  width: animatedSizeController.width,
                  child: const ListTile(
                    leading: CircleAvatar(child: Text('B')),
                    title: Text('Headline'),
                    subtitle: Text(
                        'Longer supporting text to demonstrate how the text.'),
                  ),
                ),
              )),
        ],
      );
    });
  }
}
