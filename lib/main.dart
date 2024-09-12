import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const HeadlineHunt(),
    ),
  );
}

class HeadlineHunt extends StatelessWidget {
  const HeadlineHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const Scaffold(),
    );
  }
}
