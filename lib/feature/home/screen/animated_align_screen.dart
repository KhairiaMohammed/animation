import 'package:flutter/material.dart';
import '../../animated_align/widget/animated_align_widget.dart';
import '../../animated_align/widget/animated_align_widget1.dart';

class AnimatedAlignScreen extends StatelessWidget {
  const AnimatedAlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('This is from Flutter documentation tap on it to show the animation :'),
            AnimatedAlignWidget(),
            const Text('This is From me '),
            const Text('Help the bird to eat butterfly then make capture:'),
            const SizedBox(height: 50,),
            AnimatedAlignWidget1(),
          ],
        ),
      ),
    );
  }
}
