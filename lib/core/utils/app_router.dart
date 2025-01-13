import 'package:clean_arch_bookly_app/features/home/presentation/views/pages/book_details_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/pages/home_view.dart';
import 'package:clean_arch_bookly_app/features/splash/presentation/views/splash_view.dart';
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
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
