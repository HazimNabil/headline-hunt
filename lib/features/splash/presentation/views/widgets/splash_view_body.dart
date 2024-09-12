import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Images.imagesAppLogo,
            height: 64,
            width: 64,
          ),
          const SizedBox(height: 16),
          Text(
            'Headline Hunt',
            style: AppStyles.styleBold22(context),
          )
        ],
      ),
    );
  }
}
