import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsetsDirectional.only(end: 8),
              child: CustomBookListViewItem(),
            ),
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}
