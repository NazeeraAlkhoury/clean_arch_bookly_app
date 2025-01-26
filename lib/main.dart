import 'package:clean_arch_bookly_app/constants.dart';
import 'package:clean_arch_bookly_app/core/services/bloc_observe.dart';
import 'package:clean_arch_bookly_app/core/services/service_locator.dart';
import 'package:clean_arch_bookly_app/core/utils/app_colors.dart';
import 'package:clean_arch_bookly_app/core/utils/app_router.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/image_links.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(BooksAdapter());
  Hive.registerAdapter(BookItemDataAdapter());
  Hive.registerAdapter(VolumeinfoAdapter());
  Hive.registerAdapter(ImageLinksAdapter());
  await Hive.openBox<Books>(bookBox);
  await Hive.openBox<Books>(newsetBookBox);
  await Hive.openBox<Books>(simillerBookBox);

  await ServiceLocator().setupServiceLocator();

  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clean Architecture Bookly App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
