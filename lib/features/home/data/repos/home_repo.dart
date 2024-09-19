import 'package:dartz/dartz.dart';
import 'package:headline_hunt/core/errors/server_failure.dart';
import 'package:headline_hunt/core/models/article.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, List<Article>>> fetchLatestNews(String category);

  bool isBookmarked(String articleId);

  void toggleBookmark(Article article);
}
