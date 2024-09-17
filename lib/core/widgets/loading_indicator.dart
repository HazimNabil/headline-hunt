import 'package:flutter/material.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_list.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    var dummyArticles = List.generate(5, createArticleModel);
    return Skeletonizer.sliver(
      child: ArticleList(
        articles: dummyArticles,
      ),
    );
  }

  Article createArticleModel(int index) {
    return Article.dummy();
  }
}
