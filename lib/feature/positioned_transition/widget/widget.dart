import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class PositionedTransitionWidget extends StatelessWidget {
  final positionedTransitionController = Get.put(PositionedTransitionController());
  PositionedTransitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 500,
      width: 300,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final Size biggest = constraints.biggest;
          return Stack(
            children: <Widget>[
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                     Rect.fromLTWH(0, 0, positionedTransitionController.smallLogo, positionedTransitionController.smallLogo),
                    biggest,
                  ),
                  end: RelativeRect.fromSize(
                    Rect.fromLTWH(biggest.width - positionedTransitionController.bigLogo,
                        biggest.height - positionedTransitionController.bigLogo, positionedTransitionController.bigLogo, positionedTransitionController.bigLogo),
                    biggest,
                  ),
                ).animate(CurvedAnimation(
                  parent: positionedTransitionController.controller,
                  curve: Curves.elasticInOut,
                )),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

