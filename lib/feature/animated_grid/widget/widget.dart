import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedGridWidget extends StatelessWidget {
  final animatedGridController=Get.put(AnimatedGridController());
  AnimatedGridWidget({Key? key}) : super(key: key);


  Widget buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: animatedGridController.list[index],
      selected: animatedGridController.selectedItem == animatedGridController.list[index],
      onTap: () {
        animatedGridController.selectedItem = animatedGridController.selectedItem == animatedGridController.list[index] ? null : animatedGridController.list[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedGridController>(
      builder: (_) {
        return SizedBox(
          height: Get.height,
          width: 390,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    onPressed: (){
                      animatedGridController.insert();
                    },
                    tooltip: 'insert a new item',
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: (){

                      (animatedGridController.list.length > 0) ?     animatedGridController.remove() : null;
                    },
                    tooltip: 'remove the selected item',
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedGrid(
                    key: animatedGridController.gridKey,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    initialItemCount: animatedGridController.list.length,
                    itemBuilder: animatedGridController.buildItem,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}


class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.onTap,
    this.selected = false,
    this.removing = false,
    required this.animation,
    required this.item,
  }) : assert(item >= 0);

  final Animation<double> animation;
  final VoidCallback? onTap;
  final int item;
  final bool selected;
  final bool removing;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headlineMedium!;
    if (selected) {
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ScaleTransition(
        scale: CurvedAnimation(
            parent: animation,
            curve: removing ? Curves.easeInOut : Curves.bounceOut),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 80.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text('${item + 1}', style: textStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}