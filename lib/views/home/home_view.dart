import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/views/home/widgets/adaptive_layout.dart';
import 'package:responsiveandadaptive/views/home/widgets/dahboard_desktop_layout.dart';

class ResponsiveDashboardView extends StatelessWidget {
  const ResponsiveDashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DahboardDesktopLayout(),
      ),
    );
  }
}
