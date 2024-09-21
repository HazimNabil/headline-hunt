import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bookmarked_articles_state.dart';

class BookmarkedArticlesCubit extends Cubit<BookmarkedArticlesState> {
  BookmarkedArticlesCubit() : super(BookmarkedArticlesInitial());
}
