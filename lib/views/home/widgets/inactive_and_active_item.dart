import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveandadaptive/models/drawar_item_model.dart';
import 'package:responsiveandadaptive/utils/app_styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawarItemModel,
  });

  final DrawarItemModel drawarItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawarItemModel.image),
      title: Text(
        drawarItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawarItemModel,
  });

  final DrawarItemModel drawarItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Colors.cyan),
      ),
      leading: SvgPicture.asset(drawarItemModel.image),
      title: Text(
        drawarItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
