import 'package:clean_arch_bookly_app/core/utils/app_colors.dart';
import 'package:clean_arch_bookly_app/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRating extends StatelessWidget {
  final num averageRating;
  final int ratingsCount;
  final MainAxisAlignment mainAxisAlignment;
  const CustomBookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.averageRating,
    required this.ratingsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: AppColors.ratingIconColor,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$averageRating',
          style: AppStyles.textStyle16(context),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($ratingsCount)',
            style: AppStyles.textStyle14(context).copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
