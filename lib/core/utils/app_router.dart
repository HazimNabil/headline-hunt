import 'package:go_router/go_router.dart';
import 'package:headline_hunt/core/models/article.dart';
import 'package:headline_hunt/features/home/presentation/views/details_view.dart';
import 'package:headline_hunt/features/home/presentation/views/full_article_view.dart';
import 'package:headline_hunt/features/home/presentation/views/home_view.dart';
import 'package:headline_hunt/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const homePath = '/home';
  static const detailsPath = '/details';
  static const fullArticlePath = '/fullArticle';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: detailsPath,
        builder: (context, state) {
          return DetailsView(article: state.extra as Article);
        },
      ),
      GoRoute(
        path: fullArticlePath,
        builder: (context, state) => const FullArticleView(),
      ),
    ],
  );
}
