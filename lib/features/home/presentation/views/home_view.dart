import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final bodies = const [
    HomeViewBody(),
    Text('Search'),
    Text('Bookmark'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Images.imagesAppLogo),
          const SizedBox(width: 10),
          Text(
            'Headline Hunt',
            style: AppStyles.styleBold15(context),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildNavBarItem(int index) {
    const navBarIcons = [
      (Images.imagesHomeSelected, Images.imagesHomeUnselected),
      (Images.imagesSearchSelected, Images.imagesSearchUnselected),
      (Images.imagesBookmarkSelected, Images.imagesBookmarkUnselected),
    ];

    final (selectedIcon, unSelectedIcon) = navBarIcons[index];

    return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(selectedIcon),
      icon: SvgPicture.asset(unSelectedIcon),
      label: '',
    );
  }
}
