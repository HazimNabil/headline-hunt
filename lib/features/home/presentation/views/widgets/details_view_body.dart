import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/widgets/article_image.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_body.dart';

import 'full_article_button.dart';

class DetailsViewBody extends StatelessWidget {
  final Article article;

  const DetailsViewBody({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ListView(
      children: [
        ArticleImage(
          imageUrl: article.image,
          height: screenHeight / 3.5,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ArticleBody(
            article: article,
          ),
        ),
        const SizedBox(height: 24),
        const Center(
          child: FullArticleButton(),
        ),
      ],
    );
  }
}
