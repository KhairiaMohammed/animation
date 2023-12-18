import 'package:animation/feature/animated_container/widget/widget.dart';
import 'package:animation/feature/animated_container/widget/widget1.dart';
import 'package:flutter/cupertino.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

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
                'This is from Flutter documentation tap on it to show the animation :'),
            AnimatedContainerWidget(),
            const Text('This is From me :'),
            const SizedBox(
              height: 50,
            ),
            AnimatedContainerWidget1(),
          ],
        ),
      ),
    );
  }
}
