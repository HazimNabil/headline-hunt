import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:headline_hunt/core/errors/server_failure.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/api_service.dart';
import 'package:headline_hunt/core/utils/env.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<ServerFailure, List<Article>>> fetchLatestNews(
    String category,
  ) async {
    var endPoint = 'latest-news?apiKey=${Env.apiKey}&category=$category';
    try {
      var jsonData = await apiService.get(endPoint);
      var jsonList = jsonData!['news'] as List<dynamic>;
      var articles = jsonList.map(toArticleModel).toList();
      return right(articles);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Article toArticleModel(jsonItem) => Article.fromJson(jsonItem);
}
