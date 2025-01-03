import 'package:clean_arch_bookly_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Bookly App',
      theme: ThemeData(),
      home: const SplashView(),
    );
  }
}
