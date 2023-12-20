import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/list_model.dart';
import '../widget/widget.dart';

class AnimatedGridController extends GetxController {
  final GlobalKey<AnimatedGridState>  gridKey = GlobalKey<AnimatedGridState>();
  late ListModel<int>  list;
  int?  selectedItem;
  late int
   nextItem; // The next item inserted when the user presses the '+' button.

  @override
  void onInit() {
    super.onInit();
     list = ListModel<int>(
      listKey:  gridKey,
      initialItems: <int>[0, 1, 2, 3, 4, 5],
      removedItemBuilder:  buildRemovedItem,
    );
     nextItem = 6;
  }

  // Used to build list items that haven't been removed.
  Widget  buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item:  list[index],
      selected:  selectedItem ==  list[index],
      onTap: () {
           selectedItem =  selectedItem ==  list[index] ? null :  list[index];
      update();
      },
    );
  }

  Widget  buildRemovedItem(
      int item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
      removing: true,
      // No gesture detector here: we don't want removed items to be interactive.
    );
  }

  // Insert the "next item" into the list model.
  void  insert() {
    final int index =
     selectedItem == null ?  list.length :  list.indexOf( selectedItem!);
       list.insert(index,  nextItem++);
update();
  }

  // Remove the selected item from the list model.
  void  remove() {
    if ( selectedItem != null) {
         list.removeAt( list.indexOf( selectedItem!));
         selectedItem = null;
 update();
    } else if ( list.length > 0) {
         list.removeAt( list.length - 1);
   update();
    }
  }
}
