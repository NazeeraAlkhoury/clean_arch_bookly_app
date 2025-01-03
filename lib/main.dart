import 'package:clean_arch_bookly_app/core/utils/app_colors.dart';
import 'package:clean_arch_bookly_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Bookly App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
