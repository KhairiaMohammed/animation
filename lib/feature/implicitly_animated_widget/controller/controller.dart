import 'package:get/get.dart';

class AnimatedSizeController extends GetxController {
  double size = 50.0;
  bool large = false;

  void updateSize() {
      size = large ? 250.0 : 100.0;
      large = !large;
      update();
  }
}
