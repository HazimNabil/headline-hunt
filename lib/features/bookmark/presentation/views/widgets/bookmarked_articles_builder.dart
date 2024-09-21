import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/widgets/article_list.dart';

import '../../manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';
import 'no_bookmarks_widget.dart';

class BookmarkedArticlesBuilder extends StatelessWidget {
  const BookmarkedArticlesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkedArticlesCubit, BookmarkedArticlesState>(
      builder: (context, state) {
        final loadedState = state as BookmarkedArticlesLoaded;
        if (loadedState.bookmarkedArticles.isEmpty) {
          return const NoBookmarksWidget();
        }
        return ArticleList(
          articles: loadedState.bookmarkedArticles,
        );
      },
    );
  }
}
