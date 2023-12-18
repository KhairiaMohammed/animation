import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedAlignController extends GetxController {

 bool selected = false;

void updateAnimatedAlign(){
  selected = !selected;
  update();
}

 AlignmentGeometry alignmentBird = Alignment.topRight;
 AlignmentGeometry alignmentButterfly = Alignment.bottomLeft;

 void changeAlignment() {
     alignmentBird = alignmentBird == Alignment.topRight
         ? Alignment.bottomLeft
         : Alignment.topRight;
     alignmentButterfly = alignmentBird == Alignment.topRight
         ? Alignment.bottomLeft
         : Alignment.topRight;
     update();
 }


}