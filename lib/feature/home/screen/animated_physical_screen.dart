import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../animated_cross_fade/widget/widget.dart';
import '../../animated_cross_fade/widget/widget1.dart';
import '../../animated_physical/widget/widget.dart';
import '../../animated_physical/widget/widget1.dart';

class AnimatedPhysicalModelScreen extends StatelessWidget {
  const AnimatedPhysicalModelScreen({Key? key}) : super(key: key);

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
                'This is from Flutter documentation :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedPhysicalModelWidget(),
            const SizedBox(
              height: 50,
            ),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedPhysicalModelWidget1(),
          ],
        ),
      ),
    );
  }
}
