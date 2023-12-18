import 'package:flutter/material.dart';
import '../../animated_builder/widget/animated_builder_widget.dart';
import '../../animated_builder/widget/animated_builder_widget1.dart';

class AnimatedBuilderScreen extends StatelessWidget {
  const AnimatedBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'This is from Flutter documentation :'),
            AnimatedBuilderWidget(),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedBuilderWidget1(),
          ],
        ),
      ),
    );
  }
}
