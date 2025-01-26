import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/database_service.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo.dart';

class BookmarkRepoImpl implements BookmarkRepo {
  final DatabaseService _databaseService;

  BookmarkRepoImpl(this._databaseService);

  @override
  List<Article> getBookmarkedArticles() {
    final bookmarkedArticles = _databaseService.readArticles();
    return bookmarkedArticles;
  }

  @override
  bool isBookmarked(String articleId) {
    return _databaseService.isInDatabase(articleId);
  }

  @override
  void toggleBookmark(Article article) {
    if (isBookmarked(article.id)) {
      _databaseService.removeArticle(article.id);
    } else {
      _databaseService.addArticle(article);
    }
  }
}
