import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsiveandadaptive/screens/home/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const DashBoardResponsiveUI(),
    ),
  );
}

class DashBoardResponsiveUI extends StatelessWidget {
  const DashBoardResponsiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeScreen(),
    );
  }
}
