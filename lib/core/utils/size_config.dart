import 'package:flutter/material.dart';

abstract class SizeConfig {
  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    final width = MediaQuery.sizeOf(context).width;

    final scaleFactor = width / 400;
    final responsiveFontSize = fontSize * scaleFactor;
    final lowerLimit = fontSize * 0.8;
    final upperLimit = fontSize * 1.20;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
