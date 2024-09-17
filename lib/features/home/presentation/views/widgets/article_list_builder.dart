import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/widgets/failure_widget.dart';
import 'package:headline_hunt/core/widgets/loading_indicator.dart';
import 'package:headline_hunt/features/home/presentation/manager/latest_news_cubit/latest_news_cubit.dart';
import 'package:headline_hunt/features/home/presentation/views/widgets/article_list.dart';

class ArticleListBuilder extends StatelessWidget {
  const ArticleListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestNewsCubit, LatestNewsState>(
      builder: (context, state) {
        if (state is LatestNewsSuccess) {
          return const ArticleList();
        } else if (state is LatestNewsFailure) {
          return SliverToBoxAdapter(
            child: FailureWidget(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: LoadingIndicator(),
          );
        }
      },
    );
  }
}
