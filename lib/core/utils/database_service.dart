import 'package:headline_hunt/core/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseService {
  late final Box<Article> _articleBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ArticleAdapter());
    _articleBox = await Hive.openBox<Article>('articleBox');
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
