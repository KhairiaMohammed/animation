import 'package:get/get.dart';

class AnimatedSizeController extends GetxController {
  double size = 100;
  double height=250;
  double width=250;
  bool large = false;
  bool size1 = false;

  void updateSize() {
      size = large ? 250.0 : 100.0;
      large = !large;
      update();
  }

  void updateHeightWidth() {
    height = size1 ? 250.0 : 100.0;
    width = size1 ? 250.0 : 400;
    size1= !size1;
    update();
  }


}
