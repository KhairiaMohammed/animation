import 'package:get/get.dart';

class AnimatedSwitcherController extends GetxController {
   int count = 0;
  void updateCounter(){
    count +=1;
    update();
  }
}
