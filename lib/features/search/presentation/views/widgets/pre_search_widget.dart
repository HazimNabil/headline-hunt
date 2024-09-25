import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/core/widgets/status_image.dart';

class PreSearchWidget extends StatelessWidget {
  const PreSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StatusImage(
              image: Images.imagesMobileSearch,
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
