import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo.dart';

part 'latest_news_state.dart';

class LatestNewsCubit extends Cubit<LatestNewsState> {
  final HomeRepo homeRepo;

  LatestNewsCubit(this.homeRepo) : super(LatestNewsInitial());

  void fetchLatestNews(String category) async {
    emit(LatestNewsLoading());
    var result = await homeRepo.fetchLatestNews(category);
    result.fold(
      (failure) => emit(LatestNewsFailure(failure.errorMessage)),
      (articles) => emit(LatestNewsSuccess(articles)),
    );
  }
}
