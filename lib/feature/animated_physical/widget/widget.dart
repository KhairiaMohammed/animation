import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedPhysicalModelWidget extends StatelessWidget {
  final animatedPhysicalModelController=Get.put(AnimatedPhysicalModelController());
  AnimatedPhysicalModelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedPhysicalModelController>(
      builder: (_) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: const Duration(seconds: 1), // Animation duration
                curve: Curves.easeInOut, // Animation curve
                elevation: animatedPhysicalModelController.isElevated ? 68.0 : 0.0, // Animate elevation
                shape: BoxShape.rectangle, // Shape of the container
                shadowColor: Colors.green, // Color of the shadow
                color: Colors.green, // Color of the container
                borderRadius: BorderRadius.circular(8.0), // Border radius
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Animated',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Empty space between elements
              ElevatedButton(
                onPressed: animatedPhysicalModelController.toggleElevation, // Button click handler
                child: Text(animatedPhysicalModelController.isElevated
                    ? 'Remove Elevation'
                    : 'Add Elevation'), // Button text
              ),
            ],
          ),
        );
      }
    );
  }
}
