import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:headline_hunt/core/utils/api_service.dart';
import 'package:headline_hunt/core/utils/article_database.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo_impl.dart';

var locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton(
    ApiService(Dio()),
  );

  locator.registerSingleton(
    ArticleDatabase(),
  );

  locator.registerSingleton(
    HomeRepoImpl(
      apiService: locator.get<ApiService>(),
      database: locator.get<ArticleDatabase>(),
    ),
  );
}
