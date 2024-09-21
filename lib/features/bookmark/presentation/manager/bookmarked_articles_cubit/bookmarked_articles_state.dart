part of 'bookmarked_articles_cubit.dart';

@immutable
sealed class BookmarkedArticlesState {}

final class BookmarkedArticlesInitial extends BookmarkedArticlesState {}

final class BookmarkedArticlesLoaded extends BookmarkedArticlesState {
  final List<Article> bookmarkedArticles;

  BookmarkedArticlesLoaded(this.bookmarkedArticles);
}
