import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/core/utils/api_service.dart';
import 'package:headline_hunt/core/utils/hive_service.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo_impl.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo_impl.dart';
import 'package:headline_hunt/features/search/data/repos/search_repo_impl.dart';
import 'package:hive_flutter/hive_flutter.dart';

var locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton(
    ApiService(Dio()),
  );

  locator.registerSingleton(
    HiveService(
      Hive.box<Article>(HiveService.boxName),
    ),
  );

  locator.registerSingleton(
    BookmarkRepoImpl(
      locator.get<HiveService>(),
    ),
  );

  locator.registerSingleton(
    HomeRepoImpl(
      locator.get<ApiService>(),
    ),
  );

  locator.registerSingleton(
    SearchRepoImpl(
      locator.get<ApiService>(),
    ),
  );
}
