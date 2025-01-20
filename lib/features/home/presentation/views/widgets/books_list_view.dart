import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  final Books books;
  const BooksListView({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        // final book = state.books?.items[index];
        return Padding(
          padding: const EdgeInsetsDirectional.only(end: 8),
          child: CustomBookListViewItem(
            imageUrl: books.items[index].volumeInfo.imageLinks!.smallThumbnail,
          ),
        );
      },
      itemCount: books.items.length,
    );
  }
}
