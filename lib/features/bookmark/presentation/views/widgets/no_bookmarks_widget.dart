import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';

class NoBookmarksWidget extends StatelessWidget {
  const NoBookmarksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.imagesNoData,
            ),
            Text(
              'No bookmarks available',
              style: AppStyles.styleBold18(context),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
