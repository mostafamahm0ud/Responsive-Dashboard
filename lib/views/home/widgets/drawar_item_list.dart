import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/models/drawar_item_model.dart';
import 'package:responsiveandadaptive/utils/app_images.dart';
import 'package:responsiveandadaptive/views/home/widgets/drawr_item.dart';

class DrawarItemList extends StatefulWidget {
  const DrawarItemList({super.key});

  @override
  State<DrawarItemList> createState() => _DrawarItemListState();
}

class _DrawarItemListState extends State<DrawarItemList> {
  int activeItem = 0;
  final List<DrawarItemModel> items = [
    const DrawarItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawarItemModel(
        image: Assets.imagesMyTransctions, title: 'My Transctions'),
    const DrawarItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawarItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawarItemModel(
        image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeItem != index) {
              setState(() {
                activeItem = index;
              });
            }
          },
          child: DrawrItem(
            drawarItemModel: items[index],
            isActive: activeItem == index,
          ),
        );
      },
    );
  }
}
