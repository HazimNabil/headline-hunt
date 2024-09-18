import 'package:flutter/material.dart';
import 'package:headline_hunt/core/functions/format_date.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/app_styles.dart';

class ArticleBody extends StatelessWidget {
  final Article article;

  const ArticleBody({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          article.title,
          style: AppStyles.styleBold18(context),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              article.author,
              style: AppStyles.styleMedium13(context),
            ),
            const Spacer(),
            Text(
              formatDate(article.publishedAt),
              style: AppStyles.styleMedium13(context),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          handleEmptyDescription(),
          style: AppStyles.styleRegular15(context),
        )
      ],
    );
  }

  String handleEmptyDescription() {
    if (article.description.isEmpty) {
      return 'No description available.';
    }
    return article.description;
  }
}
