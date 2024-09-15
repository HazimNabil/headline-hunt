import 'package:flutter/material.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Leonardo DiCaprio Says ‘Don’t Look Up’ Speech Came From  A Place Of ‘Realizing The World Is Falling Apart’',
          style: AppStyles.styleBold18(context),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              'By Andy Corby',
              style: AppStyles.styleMedium13(context),
            ),
            const Spacer(),
            Text(
              '1m ago',
              style: AppStyles.styleMedium13(context),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Leonardo DiCaprio Says ‘Don’t Look Up’ Speech Came From  A Place Of ‘Realizing The World Is Falling Apart’',
          style: AppStyles.styleRegular15(context),
        )
      ],
    );
  }
}
