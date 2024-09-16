part of 'latest_news_cubit.dart';

@immutable
sealed class LatestNewsState {}

final class LatestNewsInitial extends LatestNewsState {}

final class LatestNewsLoading extends LatestNewsState {}

final class LatestNewsSuccess extends LatestNewsState {
  final List<Article> articles;

  LatestNewsSuccess(this.articles);
}

final class LatestNewsFailure extends LatestNewsState {
  final String errorMessage;

  LatestNewsFailure(this.errorMessage);
}
