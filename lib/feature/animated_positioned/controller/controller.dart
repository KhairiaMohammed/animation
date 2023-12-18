import 'package:get/get.dart';

class AnimatedPositionedController extends GetxController {
  bool selected = false;

  void updateAnimatedPositioned() {
    selected = !selected;
    update();
  }
}
