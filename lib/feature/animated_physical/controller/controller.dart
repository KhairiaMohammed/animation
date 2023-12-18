import 'package:get/get.dart';

class AnimatedPhysicalModelController extends GetxController {
  bool isElevated = false;

  void toggleElevation() {
    isElevated = !isElevated;
    update();
  }
}
