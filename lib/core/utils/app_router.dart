import 'package:go_router/go_router.dart';
import 'package:headline_hunt/features/home/presentation/views/home_view.dart';
import 'package:headline_hunt/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const homePath = '/home';

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
    ],
  );
}
