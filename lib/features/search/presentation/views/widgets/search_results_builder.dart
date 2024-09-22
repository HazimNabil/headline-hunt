import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/widgets/article_list.dart';
import 'package:headline_hunt/core/widgets/failure_widget.dart';
import 'package:headline_hunt/core/widgets/loading_indicator.dart';
import 'package:headline_hunt/features/search/presentation/manager/search_news_cubit/search_news_cubit.dart';

import 'pre_search_widget.dart';

class SearchResultsBuilder extends StatelessWidget {
  const SearchResultsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchNewsCubit, SearchNewsState>(
      builder: (context, state) {
        if (state is SearchNewsInitial) {
          return const PreSearchWidget();
        } else if (state is SearchNewsFailure) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: FailureWidget(
              errorMessage: state.errorMessage,
            ),
          );
        } else if (state is SearchNewsSuccess) {
          return ArticleList(articles: state.searchResults);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
