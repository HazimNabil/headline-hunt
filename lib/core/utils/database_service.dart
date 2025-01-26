import 'package:headline_hunt/core/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseService {
  final Box<Article> _articleBox;

  static const boxName = 'articleBox';

  DatabaseService(this._articleBox);

  void addArticle(Article article) {
    _articleBox.put(article.id, article);
  }

  void removeArticle(String articleId) {
    _articleBox.delete(articleId);
  }

  List<Article> readArticles() {
    return _articleBox.values.toList();
  }

  bool isInDatabase(String articleId) {
    return _articleBox.containsKey(articleId);
  }
}
