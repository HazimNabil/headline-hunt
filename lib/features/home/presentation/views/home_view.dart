import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo_impl.dart';
import 'package:headline_hunt/features/home/presentation/manager/latest_news_cubit/latest_news_cubit.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/home_view_body.dart';

import 'widgets/home_view_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final bodies = [
    BlocProvider(
      create: (context) => LatestNewsCubit(
        locator.get<HomeRepoImpl>(),
      )..fetchLatestNews('general'),
      child: const HomeViewBody(),
    ),
    const Text('Search'),
    const Text('Bookmark'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeViewAppBar(),
      body: bodies[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.primaryColor,
        currentIndex: currentIndex,
        onTap: updateCurrentIndex,
        items: List.generate(3, buildNavBarItem),
      ),
    );
  }

  void updateCurrentIndex(index) => setState(() => currentIndex = index);

  BottomNavigationBarItem buildNavBarItem(int index) {
    const navBarIcons = [
      (Images.imagesHomeSelected, Images.imagesHomeUnselected),
      (Images.imagesSearchSelected, Images.imagesSearchUnselected),
      (Images.imagesBookmarkSelected, Images.imagesBookmarkUnselected),
    ];

    final (selectedIcon, unselectedIcon) = navBarIcons[index];

    return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(selectedIcon),
      icon: SvgPicture.asset(unselectedIcon),
      label: '',
    );
  }
}
