import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/images.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const CustomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.backgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.primaryColor,
      currentIndex: currentIndex,
      onTap: onTap,
      items: List.generate(3, buildNavBarItem),
    );
  }

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
