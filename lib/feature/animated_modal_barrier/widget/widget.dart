import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedModalBarrierWidget extends StatelessWidget {
  final  animatedModalBarrierController=Get.put( AnimatedModalBarrierController());
  AnimatedModalBarrierWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedModalBarrierController>(
      builder: (_) {
        return  Builder(
          builder: (context) => Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 250.0,
                    // alignment: FractionalOffset.center,
                    child: new Stack(
                      alignment: AlignmentDirectional.center,
                      children: animatedModalBarrierController.buildWidgetList(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
