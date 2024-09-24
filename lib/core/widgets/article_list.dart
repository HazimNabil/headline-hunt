import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/widgets/article_tile.dart';

import 'separator.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  const ArticleList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: articles.length,
      separatorBuilder: (context, index) {
        return const Separator();
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
          child: ArticleTile(article: articles[index]),
        );
      },
    );
  }
}
