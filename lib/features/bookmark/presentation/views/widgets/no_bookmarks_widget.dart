import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';
import 'package:headline_hunt/core/utils/images.dart';
import 'package:headline_hunt/core/widgets/status_image.dart';

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
            const StatusImage(
              image: Images.imagesNoData,
              scaleFactor: 3,
            ),
            const SizedBox(height: 48),
            Text(
              'No bookmarks available',
              style: AppStyles.styleBold18(context),
            ),
          ],
        ),
      ),
    );
  }
}
