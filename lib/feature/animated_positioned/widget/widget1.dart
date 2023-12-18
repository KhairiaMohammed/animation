import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedPositionedWidget1 extends StatelessWidget {
  final animatedPositionedController = Get.put(AnimatedPositionedController());

  AnimatedPositionedWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedPositionedController>(builder: (_) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF6F6F6F),
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(20),

        ),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          width: 150,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  animatedPositionedController.updateAnimatedPositioned();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: animatedPositionedController.selected
                      ? const EdgeInsets.only(top: 20)
                      : const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFF6F6F6F), width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: animatedPositionedController.selected
                            ? [
                                const Color(0xFF6b6b6b),
                                const Color(0xFF4a4a4a),
                                const Color(0xFF3d3d3d),
                              ]
                            : [
                                const Color(0xFF6b6b6b),
                                const Color(0xFF4a4a4a),
                                const Color(0xFF3d3d3d),
                              ].reversed.toList(),
                        stops: const [0, 0.5, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF333333),
                            offset: Offset(
                                0,
                                animatedPositionedController.selected
                                    ? -20
                                    : 20),
                            blurRadius: 5,
                            spreadRadius: 2),
                      ]),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                right: 15,
                top: animatedPositionedController.selected ? 35 : 15,
                child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: animatedPositionedController.selected
                            ? Colors.red
                            : Colors.green,
                        boxShadow: [
                          BoxShadow(
                              color: animatedPositionedController.selected
                                  ? Colors.red
                                  : Colors.green,
                              blurRadius: 5,
                              spreadRadius: 2),
                        ])),
              ),
            ],
          ),
        ),
      );
    });
  }
}
