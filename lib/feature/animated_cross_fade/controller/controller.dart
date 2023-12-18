import 'package:get/get.dart';

class AnimatedCrossFadeController extends GetxController {


  bool selected = false;

  void updateAnimated(){
    selected = !selected;
    update();
  }


}