import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/simillar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  final BookItemData bookItemData;
  const BookDetailsBody({super.key, required this.bookItemData});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(
                  bookItemData: bookItemData,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
