import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/search/data/repos/search_repo.dart';

part 'search_news_state.dart';

class SearchNewsCubit extends Cubit<SearchNewsState> {
  final SearchRepo _searchRepo;

  SearchNewsCubit(this._searchRepo) : super(SearchNewsInitial());

  Future<void> searchNews(String searchTerm) async {
    emit(SearchNewsLoading());
    final result = await _searchRepo.searchNews(searchTerm);
    result.fold(
      (failure) => emit(SearchNewsFailure(failure.errorMessage)),
      (articles) => emit(SearchNewsSuccess(articles)),
    );
  }
}
