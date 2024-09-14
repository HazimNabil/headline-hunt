import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_colors.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class ArticleTileInfo extends StatelessWidget {
  const ArticleTileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What To Expect From Star Wars in 2022',
          style: AppStyles.styleBold14(context),
        ),
        const SizedBox(height: 10),
        Text(
          'By Mark Daniel',
          style: AppStyles.styleMedium13(context),
        ),
        const SizedBox(height: 23),
        Row(
          children: [
            Text(
              'Entertainment',
              style: AppStyles.styleBold13(context),
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 3,
              backgroundColor: AppColors.secondaryColor,
            ),
            const SizedBox(width: 10),
            Text(
              '5m ago',
              style: AppStyles.styleMedium13(context),
            ),
            const Spacer(),
            const Icon(Icons.bookmark_outline),
          ],
        ),
      ],
    );
  }
}
