import 'package:clean_arch_bookly_app/core/utils/app_styles.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/widgets/feature_best_seller.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/widgets/feature_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(),
        const FeatureBooksListView(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Best Seller',
              style: AppStyles.textStyle18(context),
            ),
          ),
        ),
        const FeatureBestSellerListView(),
      ],
    );
  }
}
