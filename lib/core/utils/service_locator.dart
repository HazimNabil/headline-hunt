import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:headline_hunt/core/utils/api_service.dart';
import 'package:headline_hunt/core/utils/database_service.dart';
import 'package:headline_hunt/features/bookmark/data/repos/bookmark_repo_impl.dart';
import 'package:headline_hunt/features/home/data/repos/home_repo_impl.dart';
import 'package:headline_hunt/features/search/data/repos/search_repo_impl.dart';

var locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  locator.registerSingleton(
    ApiService(Dio()),
  );

  final databaseService = DatabaseService();
  await databaseService.init();

  locator.registerSingleton(
    databaseService,
  );

  locator.registerSingleton(
    BookmarkRepoImpl(
      locator.get<DatabaseService>(),
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
