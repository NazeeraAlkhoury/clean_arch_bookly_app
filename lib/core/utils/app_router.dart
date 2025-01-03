// import 'package:bookly/core/services/service_locator.dart';
// import 'package:bookly/features/home/data/models/book_model/book_data_model.dart';
// import 'package:bookly/features/home/presentation/view_models/books_cubit/books_cubit.dart';
// import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
// import 'package:bookly/features/home/presentation/view_models/similler_books_cubit/similler_books_cubit.dart';
// import 'package:bookly/features/home/presentation/views/book_details_view.dart';

// import 'package:bookly/features/home/presentation/views/home_view.dart';
// import 'package:bookly/features/splash/presentation/views/splash_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// abstract class AppRouter {
//   static const String splashRoute = '/';
//   static const String homeViewRoute = '/homeView';
//   static const String bookDetailsViewRoute = '/bookDetailsView';

//   static final GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         path: splashRoute,
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: homeViewRoute,
//         builder: (context, state) => MultiBlocProvider(
//           providers: [
//             BlocProvider(
//               create: (context) => getIt<BooksCubit>()..getBooks(),
//             ),
//             BlocProvider(
//               create: (context) => getIt<NewestBooksCubit>()..getNewestBooks(),
//               lazy: false,
//             )
//           ],
//           child: const HomeView(),
//         ),

//         // BooksCubit(
//         //   HomeRepositoryImp(
//         //     ApiServices(
//         //       Dio(),
//         //     ),
//         //   ),
//         // )..getBooks(),
//       ),
//       GoRoute(
//         path: bookDetailsViewRoute,
//         builder: (context, state) {
//           return BlocProvider(
//             create: (context) =>
//                 getIt<SimillerBooksCubit>()..getSimillerBooks(),
//             child: BookDetailsView(
//               bookDataModel: state.extra as BookDataModel,
//             ),
//           );
//         },
//       ),
//     ],
//   );
// }
