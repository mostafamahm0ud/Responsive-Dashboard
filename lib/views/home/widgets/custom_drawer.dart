import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/models/drawar_item_model.dart';
import 'package:responsiveandadaptive/utils/app_images.dart';
import 'package:responsiveandadaptive/views/home/widgets/drawar_item_list.dart';
import 'package:responsiveandadaptive/views/home/widgets/inactive_and_active_item.dart';
import 'package:responsiveandadaptive/views/home/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Mostafa Mahmoud',
              subtitle: 'good Developer',
            ),
          ),
          DrawarItemList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveItem(
                    drawarItemModel: DrawarItemModel(
                        image: Assets.imagesSettings, title: 'Settings')),
                InActiveItem(
                    drawarItemModel: DrawarItemModel(
                        image: Assets.imagesLogout, title: 'LogOut')),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
