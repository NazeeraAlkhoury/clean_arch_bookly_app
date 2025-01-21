import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_state.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/state_handler_widget.dart';
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
          child: BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) =>
                  previous.requestState != current.requestState,
              builder: (context, state) {
                return StateHandlerWidget(
                  state: state.requestState,
                  successWidget: (context) => BooksListView(
                    books: state.books!,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
