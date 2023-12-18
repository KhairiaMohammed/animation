import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RoomDetailItems extends StatelessWidget {
  final animation = const AlwaysStoppedAnimation<double>(1);
  const RoomDetailItems({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
return Column(children: [
  SlideTransition(
    position: Tween(
      begin: const Offset(-1, 1),
      end: Offset.zero,
    ).animate(animation),
    child: Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        onPressed: () => Get.back(),
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        ),
        icon: const Icon(Icons.keyboard_arrow_left),
        label: const Text('BACK'),
      ),
    ),
  ),
],);
  }
}
