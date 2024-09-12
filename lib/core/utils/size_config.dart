import 'package:flutter/material.dart';

abstract class SizeConfig {
  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    var width = MediaQuery.sizeOf(context).width;

    var scaleFactor = width / 390;
    var responsiveFontSize = fontSize * scaleFactor;
    var lowerLimit = responsiveFontSize * 0.8;
    var upperLimit = responsiveFontSize * 1.20;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
