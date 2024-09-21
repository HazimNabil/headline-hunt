import 'package:headline_hunt/core/models/article.dart';

abstract class BookmarkRepo {
  bool isBookmarked(String articleId);

  void toggleBookmark(Article article);

  List<Article> getBookmarkedArticles();
}
