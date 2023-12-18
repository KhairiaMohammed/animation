import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedDefaultTextStyleController extends GetxController {
  bool first=false;
  double fontSize=60;
  Color color=Colors.blue;


  void updateAnimatedText(){
    fontSize=first?90:60;
    color=first?Colors.blue:Colors.orange;
    first=!first;
    update();
  }
}