import 'package:animation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../controller/home_controller.dart';

class TapBarWidget extends StatelessWidget {
  final TextTheme textTheme;
  final Size size;

  const TapBarWidget({
    super.key,
    required this.textTheme,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: size.height * 0.2,
        decoration: const BoxDecoration(
          border: Border(
          )
        ),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: homeController.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      homeController.changeIndex(index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: size.width * 0.21,
                      height: size.height * 0.090,
                      decoration: BoxDecoration(
                          color: homeController.currentIndex == index
                              ? mainColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          homeController.items[index],
                          textAlign: TextAlign.center,
                          style: textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: homeController.currentIndex == index
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      );
    });
  }
}
