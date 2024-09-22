import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class PreSearchWidget extends StatelessWidget {
  const PreSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Images.imagesMobileSearch,
              height: screenSize.height / 2.5,
              width: screenSize.width / 2.5,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 30),
            Text(
              'Enter to search',
              style: AppStyles.styleBold18(context),
            ),
          ],
        ),
      ),
    );
  }
}
