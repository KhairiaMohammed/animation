import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/list_model.dart';
import '../widget/widget.dart';

class AnimatedListController extends GetxController {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  late ListModel<int> list;
  int? selectedItem;
  late int nextItem;

  @override
  void onInit() {
    super.onInit();
    list = ListModel<int>(
      listKey: listKey,
      initialItems: <int>[0, 1, 2],
      removedItemBuilder: buildRemovedItem,
    );
    nextItem = 3;
  }

  Widget buildRemovedItem(
      int item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
    );
  }

  void insert() {
    final int index =
        selectedItem == null ? list.length : list.indexOf(selectedItem!);
    list.insert(index, nextItem++);
    update();
  }

  void remove() {
    if (selectedItem != null) {
      list.removeAt(list.indexOf(selectedItem!));
      selectedItem = null;
      update();
    }
  }
}
