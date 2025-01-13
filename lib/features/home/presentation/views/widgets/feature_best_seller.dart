import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureBestSellerListView extends StatelessWidget {
  const FeatureBestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 12,
        ),
        child: BestSellerItem(),
      ),
      itemCount: 10,
    );
  }
}
