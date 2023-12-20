import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  AnimatedModalBarrierController extends GetxController with GetSingleTickerProviderStateMixin {
  bool isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;

  @override
  void onInit() {
    super.onInit();
    ColorTween  _colorTween = ColorTween(
      begin: Color.fromARGB(100, 255, 255, 255),
      end: Color.fromARGB(100, 127, 127, 127),
    );

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3)
    );
    _colorTweenAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );


  }

  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      ElevatedButton(
        child: Text('Button'),
        onPressed: () {
          updateLoading(true);
          _animationController.reset();
          _animationController.forward();
          Future.delayed(const Duration(seconds: 5), () {
            updateLoading(false);
          });
        },
      ),
    ];

    if (isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }

  void updateLoading(bool value){
    isLoading= value ;
    update();
  }


}
