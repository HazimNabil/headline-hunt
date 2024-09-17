import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_tile.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  const ArticleList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
          child: ArticleTile(article: articles[index]),
        );
      },
    );
  }
}
