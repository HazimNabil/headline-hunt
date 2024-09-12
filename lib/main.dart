import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: const Scaffold(),
        );
      },
    );
  }
}
