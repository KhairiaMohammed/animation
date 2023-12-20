import 'package:get/get.dart';

class AnimatedFractionallySizedBoxController extends GetxController {
  bool selected = false;


  void updateSelected() {
    selected = !selected;
    update();
  }


}
