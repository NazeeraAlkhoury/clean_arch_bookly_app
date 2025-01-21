import 'package:clean_arch_bookly_app/constants.dart';
import 'package:clean_arch_bookly_app/core/utils/app_router.dart';
import 'package:clean_arch_bookly_app/core/utils/app_styles.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity/book_item_data.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  final BookItemData bookItemData;
  const BestSellerItem({
    super.key,
    required this.bookItemData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.bookDetailsViewRoute,
          extra: bookItemData,
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookListViewItem(
              imageUrl: bookItemData.volumeInfo.imageLinks!.thumbnail,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .5,
                    child: Text(
                      bookItemData.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle20(context).copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookItemData.volumeInfo.authors[0],
                    style: AppStyles.textStyle14(context),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: AppStyles.textStyle20(context).copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        CustomBookRating(
                          averageRating:
                              bookItemData.volumeInfo.averageRating ?? 0,
                          ratingsCount: bookItemData.volumeInfo.ratingsCount!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
