import 'package:flutter/material.dart';
import 'package:animation/feature/animated_positioned/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import '../../animated_positioned/widget/widget1.dart';
import '../../animated_size/widget/widget.dart';
import '../../animated_size/widget/widget1.dart';

class AnimatedSizeScreen extends StatelessWidget {
  const AnimatedSizeScreen({Key? key}) : super(key: key);

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
            AnimatedSizeWidget(),
            const SizedBox(
              height: 50,
            ),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedSizeWidget1(),
          ],
        ),
      ),
    );
  }
}
