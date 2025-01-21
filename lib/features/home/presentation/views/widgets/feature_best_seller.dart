import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_bloc.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/controller/home_bloc/home_state.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/state_handler_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBestSellerListView extends StatelessWidget {
  const FeatureBestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (previous, current) =>
              previous.newsetRequestState != current.newsetRequestState,
          builder: (context, state) {
            return StateHandlerWidget(
              state: state.newsetRequestState,
              successWidget: (context) => BestSellerList(
                books: state.newsetBooks!,
              ),
            );
          }),
    );

    // SliverList.builder(
    //   itemBuilder: (context, index) => Padding(
    // padding: const EdgeInsets.only(
    //   left: 20,
    //   right: 20,
    //   bottom: 12,
    // ),
    //     child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
    //       return const BestSellerItem();
    //     }),
    //   ),
    //   itemCount: 10,
    // );
    //}
  }
}
