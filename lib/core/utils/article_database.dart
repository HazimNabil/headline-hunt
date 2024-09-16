import 'package:headline_hunt/core/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ArticleDatabase {
  late final Box<Article> _articleBox;
  final _boxName = 'articleBox';

  Future<void> initDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ArticleAdapter());
    _articleBox = await Hive.openBox<Article>(_boxName);
  }

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
