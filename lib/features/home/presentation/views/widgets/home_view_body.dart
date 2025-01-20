import 'package:clean_arch_bookly_app/core/services/service_locator.dart';
import 'package:clean_arch_bookly_app/core/utils/app_styles.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_event.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/feature_best_seller.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(GetBooksEvent())
        ..add(GetNewsetBooksEvent()),
      child: CustomScrollView(
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
      ),
    );
  }
}
