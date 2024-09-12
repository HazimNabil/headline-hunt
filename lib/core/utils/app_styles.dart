import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/size_config.dart';

class AppStyles {
  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 18),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleRegular18(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 18),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleNormal12(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 12),
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle styleBold15(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 15),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleMedium15(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 15),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold13(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 13),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleMedium13(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 13),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular15(BuildContext context) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, 15),
      fontWeight: FontWeight.normal,
    );
  }
}
