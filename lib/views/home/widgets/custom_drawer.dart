import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/utils/app_images.dart';
import 'package:responsiveandadaptive/views/home/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
                      image: Assets.imagesAvatar3,
                      title: 'Mostafa Mahmoud',
                      subtitle: 'good Developer',
                    ),
        ],
      ),
    );
  }
}
