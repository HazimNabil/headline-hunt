part of 'search_news_cubit.dart';

@immutable
sealed class SearchNewsState {}

final class SearchNewsInitial extends SearchNewsState {}

final class SearchNewsLoading extends SearchNewsState {}

final class SearchNewsSuccess extends SearchNewsState {
  final List<Article> searchResults;

  SearchNewsSuccess(this.searchResults);
}

final class SearchNewsFailure extends SearchNewsState {
  final String errorMessage;

  SearchNewsFailure(this.errorMessage);
}
