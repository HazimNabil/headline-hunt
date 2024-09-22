import 'package:dartz/dartz.dart';
import 'package:headline_hunt/core/errors/failure.dart';
import 'package:headline_hunt/core/models/article.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Article>>> searchNews(String searchTerm);
}
