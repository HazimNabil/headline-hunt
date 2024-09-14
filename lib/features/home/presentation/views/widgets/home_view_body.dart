import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_tile.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/category_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        SliverToBoxAdapter(
          child: CategoryList(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 27),
        ),
        SliverToBoxAdapter(
          child: ArticleTile(),
        ),
      ],
    );
  }
}
