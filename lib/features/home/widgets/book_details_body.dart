import 'package:clean_arch_bookly_app/features/home/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
      ],
    );
  }
}
