import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_router.dart';
import 'package:headline_hunt/core/utils/news_bloc_observer.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/models/article.dart';
import 'core/utils/article_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ArticleAdapter());
  await Hive.openBox<Article>(ArticleDatabase.boxName);
  setupServiceLocator();
  Bloc.observer = NewsBlocObserver();
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
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    );
  }
}
