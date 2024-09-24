import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/features/bookmark/presentation/manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';

import 'bookmark_view_app_bar.dart';
import 'bookmarked_articles_builder.dart';

class BookmarkViewBody extends StatefulWidget {
  const BookmarkViewBody({super.key});

  @override
  State<BookmarkViewBody> createState() => _BookmarkViewBodyState();
}

class _BookmarkViewBodyState extends State<BookmarkViewBody> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<BookmarkedArticlesCubit>();
    cubit.fetchBookmarkedArticles();
  }

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
          BookmarkedArticlesBuilder(),
        ],
      ),
    );
  }
}

