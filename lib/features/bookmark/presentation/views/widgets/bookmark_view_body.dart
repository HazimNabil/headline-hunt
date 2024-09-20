import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_list.dart';

import 'bookmark_category_list.dart';
import 'bookmark_view_app_bar.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 22),
          ),
          SliverToBoxAdapter(
            child: BookmarkViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          SliverToBoxAdapter(
            child: BookmarkCategoryList(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 27),
          ),
          ArticleList(articles: []),
        ],
      ),
    );
  }
}
