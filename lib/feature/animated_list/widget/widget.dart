import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class AnimatedListWidget extends StatelessWidget {
  final animatedListController=Get.put(AnimatedListController());
   AnimatedListWidget({Key? key}) : super(key: key);


  // Used to build list items that haven't been removed.
  Widget buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: animatedListController.list[index],
      selected: animatedListController.selectedItem == animatedListController.list[index],
      onTap: () {
        animatedListController.selectedItem = animatedListController.selectedItem == animatedListController.list[index] ? null : animatedListController.list[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimatedListController>(
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
                      animatedListController.insert();
                    },
                    tooltip: 'insert a new item',
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: (){
                      animatedListController.remove();
                      print(animatedListController.list.length);
                    },
                    tooltip: 'remove the selected item',
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedList(
                    physics: const AlwaysScrollableScrollPhysics(),
                    key: animatedListController.listKey,
                    initialItemCount: animatedListController.list.length,
                    itemBuilder: buildItem,
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
    required this.animation,
    required this.item,
  }) : assert(item >= 0);

  final Animation<double> animation;
  final VoidCallback? onTap;
  final int item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headlineMedium!;
    if (selected) {
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 80.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text('Item $item', style: textStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}