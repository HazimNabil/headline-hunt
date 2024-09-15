import 'package:headline_hunt/core/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ArticleDatabase {
  late final Box<Article> articleBox;
  final boxName = 'articleBox';

  Future<void> initDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ArticleAdapter());
    articleBox = await Hive.openBox<Article>(boxName);
  }

  void addArticle(Article article) {
    articleBox.put(article.id, article);
  }

  void removeArticle(String articleId) {
    articleBox.delete(articleId);
  }

  List<Article> readArticles() {
    return articleBox.values.toList();
  }

  bool isInDatabase(String articleId) {
    return articleBox.containsKey(articleId);
  }
}
