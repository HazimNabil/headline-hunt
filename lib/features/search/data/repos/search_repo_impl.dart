import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:headline_hunt/core/errors/failure.dart';
import 'package:headline_hunt/core/errors/server_failure.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/api_service.dart';
import 'package:headline_hunt/core/utils/env.dart';
import 'package:headline_hunt/features/search/data/repos/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService _apiService;

  const SearchRepoImpl(this._apiService);

  @override
  Future<Either<Failure, List<Article>>> searchNews(String searchTerm) async {
    final endPoint = 'search?apiKey=${Env.apiKey}&keywords=$searchTerm';
    try {
      final jsonData = await _apiService.get(endPoint);
      final jsonList = jsonData!['news'] as List;
      final articles = jsonList.map(toArticleModel).toList();
      return right(articles);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Article toArticleModel(jsonItem) => Article.fromJson(jsonItem);
}
