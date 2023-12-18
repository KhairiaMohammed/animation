import 'package:animation/feature/animated_positioned/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../animated_physical/widget/widget.dart';
import '../../animated_physical/widget/widget1.dart';
import '../../animated_positioned/widget/widget1.dart';

class AnimatedPositionedScreen extends StatelessWidget {
  const AnimatedPositionedScreen({Key? key}) : super(key: key);

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
            AnimatedPositionedWidget(),
            const SizedBox(
              height: 50,
            ),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedPositionedWidget1(),
          ],
        ),
      ),
    );
  }
}
