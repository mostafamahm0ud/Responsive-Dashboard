import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveandadaptive/models/drawar_item_model.dart';
import 'package:responsiveandadaptive/views/home/widgets/inactive_and_active_item.dart';

class DrawrItem extends StatelessWidget {
  const DrawrItem(
      {super.key, required this.drawarItemModel, required this.isActive});

  final DrawarItemModel drawarItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            drawarItemModel: drawarItemModel,
          )
        : InActiveItem(drawarItemModel: drawarItemModel);
  }
}
