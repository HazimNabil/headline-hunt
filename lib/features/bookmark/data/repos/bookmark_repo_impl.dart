import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/hive_service.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo.dart';

class BookmarkRepoImpl implements BookmarkRepo {
  final HiveService _hiveService;

  BookmarkRepoImpl(this._hiveService);

  @override
  List<Article> getBookmarkedArticles(String category) {
    final bookmarkedArticles = _hiveService.readArticles();
    isSameCategory(Article article) => article.category == category;
    final filteredArticles = bookmarkedArticles.where(isSameCategory).toList();
    return filteredArticles;
  }

  @override
  bool isBookmarked(String articleId) {
    return _hiveService.isInDatabase(articleId);
  }

  @override
  void toggleBookmark(Article article) {
    if (isBookmarked(article.id)) {
      _hiveService.removeArticle(article.id);
    } else {
      _hiveService.addArticle(article);
    }
  }
}
