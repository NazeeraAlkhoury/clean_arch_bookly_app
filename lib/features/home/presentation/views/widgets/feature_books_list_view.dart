import 'package:clean_arch_bookly_app/core/utils/enums.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_state.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            switch (state.requestState) {
              case RequestStates.successState:
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final book = state.books?.items[index];
                    return Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8),
                      child: CustomBookListViewItem(
                        imageUrl:
                            book?.volumeInfo.imageLinks?.smallThumbnail ?? '',
                      ),
                    );
                  },
                  itemCount: state.books?.items.length ?? 0,
                );
              case RequestStates.failureState:
                return Center(child: Text(state.errMessage));
              case RequestStates.loadingState:
                return const Center(child: CircularProgressIndicator());
              case RequestStates.initialState:
                return Center(child: Text(state.errMessage));
            }
          }),
        ),
      ),
    );
  }
}
