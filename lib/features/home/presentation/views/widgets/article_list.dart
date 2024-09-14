import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_tile.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
          child: ArticleTile(),
        );
      },
    );
  }
}
