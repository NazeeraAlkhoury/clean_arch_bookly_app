import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/books.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  final Books books;
  const BestSellerList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: books.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 12,
            ),
            child: BestSellerItem(
              bookItemData: books.items[index],
            ),
          );
        });
  }
}
