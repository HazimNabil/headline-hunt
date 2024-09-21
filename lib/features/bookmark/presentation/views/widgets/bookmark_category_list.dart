import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/widgets/category_item.dart';
import 'package:headline_hunt/features/bookmark/presentation/manager/bookmarked_articles_cubit/bookmarked_articles_cubit.dart';

class BookmarkCategoryList extends StatefulWidget {
  const BookmarkCategoryList({super.key});

  @override
  State<BookmarkCategoryList> createState() => _BookmarkCategoryListState();
}

class _BookmarkCategoryListState extends State<BookmarkCategoryList> {
  final categories = const [
    'general',
    'business',
    'technology',
    'entertainment',
    'sports',
    'politics',
    'health',
    'science',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          buildCategoryItem,
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    var isLast = index == categories.length - 1;
    return Padding(
      padding: EdgeInsets.only(right: isLast ? 0 : 10),
      child: GestureDetector(
        onTap: () => changeCategory(index),
        child: CategoryItem(
          category: categories[index],
          isActive: activeIndex == index,
        ),
      ),
    );
  }

  void changeCategory(int index) {
    setState(() => activeIndex = index);
    final cubit = context.read<BookmarkedArticlesCubit>();
    cubit.fetchBookmarkedArticles(categories[index]);
  }
}
