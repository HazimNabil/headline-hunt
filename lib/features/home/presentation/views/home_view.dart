import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/utils/service_locator.dart';
import 'package:headline_hunt/features/bookmark/presentation/views/widgets/bookmark_view_body.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo_impl.dart';
import 'package:headline_hunt/features/home/presentation/manager/latest_news_cubit/latest_news_cubit.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/custom_nav_bar.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:headline_hunt/features/search/data/repos/search_repo_impl.dart';
import 'package:headline_hunt/features/search/presentation/manager/search_news_cubit/search_news_cubit.dart';
import 'package:headline_hunt/features/search/presentation/views/widgets/search_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _bodies = [
    BlocProvider(
      create: (context) => LatestNewsCubit(
        locator.get<HomeRepoImpl>(),
      )..fetchLatestNews('general'),
      child: const HomeViewBody(),
    ),
    BlocProvider(
      create: (context) => SearchNewsCubit(
        locator.get<SearchRepoImpl>(),
      ),
      child: const SearchViewBody(),
    ),
    const BookmarkViewBody(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodies[_currentIndex],
      bottomNavigationBar: CustomNavBar(
        onTap: selectTab,
        currentIndex: _currentIndex,
      ),
    );
  }

  void selectTab(index) => setState(() => _currentIndex = index);
}
