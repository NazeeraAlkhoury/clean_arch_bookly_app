import 'package:clean_arch_bookly_app/core/utils/app_styles.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  final BookItemData bookItemData;
  const BooksDetailsSection({
    super.key,
    required this.bookItemData,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .23,
          ),
          child: const CustomBookListViewItem(
            imageUrl: '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: AppStyles.textStyle30(context).copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyles.textStyle18(context).copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        CustomBookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          averageRating: bookItemData.volumeInfo.averageRating!,
          ratingsCount: bookItemData.volumeInfo.ratingsCount!,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
