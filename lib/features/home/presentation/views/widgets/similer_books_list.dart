import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksList extends StatelessWidget {
  final Books books;
  const SimilerBooksList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookListViewItem(
              imageUrl: books.items[index].volumeInfo.imageLinks!.thumbnail,
            ),
          );
        });
  }
}
