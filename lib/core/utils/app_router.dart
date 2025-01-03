import 'package:clean_arch_bookly_app/features/home/home_view.dart';
import 'package:clean_arch_bookly_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashRoute = '/';
  static const String homeViewRoute = '/homeView';
  static const String bookDetailsViewRoute = '/bookDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
