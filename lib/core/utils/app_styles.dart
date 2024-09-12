import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/size_config.dart';

class AppStyles {
  static TextStyle styleBold22(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 22),
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 18),
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleBold15(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 15),
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleRegular15(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 15),
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle styleBold13(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 13),
      fontWeight: FontWeight.bold,
      color: AppColors.categoryColor,
    );
  }

  static TextStyle styleMedium13(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 13),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryColor,
    );
  }
}
