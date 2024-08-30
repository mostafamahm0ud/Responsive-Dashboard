import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/views/home/widgets/custom_drawer.dart';
import 'package:responsiveandadaptive/views/home/widgets/drawar_item_list.dart';

class DahboardDesktopLayout extends StatelessWidget {
  const DahboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        
      ],
    );
  }
}
