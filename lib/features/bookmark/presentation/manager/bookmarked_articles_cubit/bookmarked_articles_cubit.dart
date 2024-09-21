import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo.dart';

part 'bookmarked_articles_state.dart';

class BookmarkedArticlesCubit extends Cubit<BookmarkedArticlesState> {
  final BookmarkRepo _bookmarkRepo;

  BookmarkedArticlesCubit(this._bookmarkRepo)
      : super(BookmarkedArticlesInitial());

  void fetchBookmarkedArticles() {
    final bookmarkedArticles = _bookmarkRepo.getBookmarkedArticles();
    emit(BookmarkedArticlesLoaded(bookmarkedArticles));
  }
}
