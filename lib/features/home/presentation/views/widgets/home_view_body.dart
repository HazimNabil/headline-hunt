import 'package:flutter/material.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_list_builder.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/category_list.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: HomeViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 30),
          ),
          SliverToBoxAdapter(
            child: CategoryList(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 27),
          ),
          ArticleListBuilder(),
        ],
      ),
    );
  }
}
