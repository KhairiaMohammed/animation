import 'package:get/get.dart';

class AnimatedOpacityController extends GetxController {
  double opacityLevel = 1.0;

  void changeOpacity() {
     opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
     update();
  }
}
