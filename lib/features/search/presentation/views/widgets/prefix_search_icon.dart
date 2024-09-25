import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/images.dart';

class PrefixSearchIcon extends StatelessWidget {
  const PrefixSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 10),
      child: SvgPicture.asset(
        Images.imagesSearchUnselected,
        height: 17,
        width: 17,
        fit: BoxFit.scaleDown,
        colorFilter: const ColorFilter.mode(
          AppColors.secondaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
