import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/widgets/article_list.dart';
import 'package:headline_hunt/features/bookmark/presentation/manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';

import 'bookmark_category_list.dart';
import 'bookmark_view_app_bar.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 22),
          ),
          const SliverToBoxAdapter(
            child: BookmarkViewAppBar(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          const SliverToBoxAdapter(
            child: BookmarkCategoryList(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 27),
          ),
          BlocBuilder<BookmarkedArticlesCubit, BookmarkedArticlesState>(
            builder: (context, state) {
              final loadedState = state as BookmarkedArticlesLoaded;
              return ArticleList(
                articles: loadedState.bookmarkedArticles,
              );
            },
          ),
        ],
      ),
    );
  }
}
