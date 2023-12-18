import 'package:animation/feature/decorated_box_transition/widget/widget.dart';
import 'package:animation/feature/decorated_box_transition/widget/widget1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../animated_cross_fade/widget/widget.dart';
import '../../animated_cross_fade/widget/widget1.dart';

class AnimatedDecoratedBoxTransitionScreen extends StatelessWidget {
  const AnimatedDecoratedBoxTransitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'This is from Flutter documentation tap on it to show the animation :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedDecoratedBoxTransitionWidget(),
            const SizedBox(
              height: 50,
            ),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedDecoratedBoxTransitionWidget1(),
          ],
        ),
      ),
    );
  }
}
