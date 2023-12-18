import 'package:get/get.dart';


class AnimatedContainerController extends GetxController   {


  bool selected = false;

  void updateAnimated(){
    selected = !selected;
    update();
  }

}